%Contains code to find parasite ES virulence on hosts with a reciprocal relationship. 
%Case 3 host specialism (Onward Transmission); parasite has greater onward transmission from PH (host 1) 
%than NPH (host 2). Code provided for both symmetric and asymmetric non-reciprocal relationships. 

%Degree of specialism is varied by multiplier F

%Runtime for simulations
t0 = 0;
tfinal = 20000; 

%Initial populations
S1_0 = 180;
I1_0 = 20;
S2_0 = 180; 
I2_0 = 20;
y0_vec = [S1_0, I1_0, S2_0, I2_0];

%Constant parameters
b1 = 1;
b2 = 1;
q1 = 0.0005;
q2 = 0.0005;
d1 = 0.1;
d2 = 0.1;
g1 = 2;
g2 = 2;
B11 = .1;
B12 = .1;
B22 = .1;
B21 = .1;

%range of epsilons tested to find ES virulence
e_min = 3;
e_max = 5;
stepsize = 0.02;
vec = e_min:stepsize:e_max;
Fvec = [0.12, 0.1, 0.08, 0.06];
PIP = zeros(length(vec));

%Set interaction parameters to test
r12vec = -0.0003:0.0001:0.0003;

%UNCOMMENT one of two lines below
r21vec = [-0.0002*ones(1,3), 0, 0.0002*ones(1,3)]; %for asymmetric interactions
%r21vec = -0.0003:0.0001:0.0003; %for symmetric interactions

ESS_vir = zeros(length(Fvec),length(r12vec));

for z = 1:length(Fvec)
    F = Fvec(z);
    for k = 1:length(r21vec)
        disp(k)
        r21par = r21vec(k);
        r12par = r12vec(k);
        PIP = zeros(length(vec));
        for i = 1:length(vec)
            e_p = vec(i);
            a1 = e_p;
            a2 = e_p;
            BS1 = 1;
            BS2 = 1;
            BT1 = 0.1*e_p^(2/3);
            BT2 = 0.1*(e_p)^(2/3-F);
            for j = 1:length(vec)
                e_pm = vec(j);
                a1M = e_pm;
                a2M = e_pm;
                BS1M = 1;
                BS2M = 1;
                BT1M = 0.1*e_pm^(2/3);
                BT2M = 0.1*(e_pm)^(2/3-F);
            %Carry out simulation to find ecological equilibrium
                params = [b1, b2, q1, q2, d1, d2, g1, g2, B11, B12, B22, B21, BS1, BS2, a1, a2, BT1, BT2, BS1M, BS2M, a1M, a2M, BT1M, BT2M];
                residents = specgen_pulse_only(y0_vec, t0, tfinal, params, @antagonistic, r12par, @antagonistic, r21par);
                S1_res = residents(1);
                I1_res = residents(2);
                S2_res = residents(3);
                I2_res = residents(4);
        
            %Check if mutant satisfies invasion criteria, set value in PIP
               if (d1+g1+a1M)*(d2+g2+a2M) - (d2 + g2 + a2M)*B11*BS1M*BT1M*S1_res - (d1 + g1 + a1M)*B11*BS2M*BT2M*S2_res < 0
                   PIP(i,j) = 1; % invasion occurs
               else
                   PIP(i,j) = 0;
               end
            end
        end
    ESS_vir(z,k) = ESS_virulence(PIP, vec);
    end
end
ESS_vir
