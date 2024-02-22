%Code for Supplemental Figure S5.1: Non-equilibrium attempted invasion of
%mutant parasite

t0 = 0;
tfinal = 8000; 

S1_0 = 180;
I1_0 = 20;
S2_0 = 180; 
I2_0 = 20;
y0_vec = [S1_0, I1_0, S2_0, I2_0,0,0];

%constants
b1 = 1;
b2 = 1;
q1 = 0.0005;
q2 = 0.0005;
d1 = 0.1;
d2 = 0.1;
g1 = 2;
g2 = 2;
B11 = 0.1;
B12 = 0.1;
B22 = 0.1;
B21 = 0.1;


e_min = 3;
e_max = 5;
stepsize = 0.08;
vec = e_min:stepsize:e_maxl
PIP_1 = zeros(length(vec));
PIP_2 = zeros(length(vec));

%Set interaction parameters 
r12vec = [0.0002, 0, -0.0002];
r21vec = 0;

g = 1;
r21par = r21vec;
    

for l = 1:3
    r12par = r12vec(l);
    PIP_1 = zeros(length(vec));
    PIP_2 = zeros(length(vec));
%Loop over resident e_p
    for i = 1:length(vec)
        e_p = vec(i);
        a1 = e_p;
        a2 = e_p;
        BS1 = 1;
        BS2 = 0.86;
        BT1 = 0.1*e_p^(2/3);
        BT2 = 0.1*(e_p)^(2/3);
    %Loop over mutant e_pm
        for j = 1:length(vec)
            e_pm = vec(j);
            a1M = e_pm;
            a2M = e_pm;
            BS1M = 1;
            BS2M = 0.86;
            BT1M = 0.1*e_pm^(2/3);
            BT2M = 0.1*(e_pm)^(2/3);

            params = [b1, b2, q1, q2, d1, d2, g1, g2, B11, B12, B22, B21, BS1, BS2, a1, a2, BT1, BT2, BS1M, BS2M, a1M, a2M, BT1M, BT2M];
            [t,y] = specgen_pulse(y0_vec, t0, tfinal, params, @antagonistic, r12par, @antagonistic, r21par);
    %Set invasion value in PIP
            PIP_1(i,j) = y(end,end-1)/(y(end,end-1)+y(end,2)); 
        end
   end
   figure(1)
   subplot(1,3,g)
   imagesc(PIP_1')
   set(gca,'YDir','normal') 
   colormap(flipud(pink))
   clim([0 0.6])
   xlabel('a_p')
   ylabel('a_pm')
   title(['r12 = ' num2str(r12par)]);
   if l == 1
      ylabel(['r21 = ' num2str(r21par)])
   end
   figure(2)
   subplot(1,3,g)
   imagesc(PIP_2')
   set(gca,'YDir','normal') 
   colormap(flipud(pink))
   clim([0 0.6])
   xlabel('a_p')
   ylabel('a_pm')
   title(['r12 = ' num2str(r12par)]);
   if l == 1
      ylabel(['r21 = ' num2str(r21par)])
   end
      g = g+1;
end
PIP_1
        


