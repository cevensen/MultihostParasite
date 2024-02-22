%Parasite grows faster on PH (host 1) than NPH (host 2). This script can
%be used to look at dynamics of one host/host/parasite combination. 

t0 = 0;
tfinal = 10000; 

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
B11 = 0.1;
B12 = 0.1;
B22 = 0.1;
B21 = 0.1;

%interaction; change at will
r12par = -0.0003;
r21par = -0.0003;

%Degree of specialism; change at will
F = .9;

%Below code gives dynamics of invasion 
e_p = 2;
a1 = e_p;
a2 = F*e_p;
BS1 = 1;
BS2 = 1;
BT1 = 0.1*e_p^(2/3);
BT2 = 0.1*(F*e_p)^(2/3);
e_pm = 2.2;
a1M = e_pm;
a2M = F*e_pm;
BT1M = 0.1*e_pm^(2/3);
BT2M = 0.1*(F*e_pm)^(2/3);
BS1M = 1;
BS2M = 1;
params = [b1, b2, q1, q2, d1, d2, g1, g2, B11, B12, B22, B21, BS1, BS2, a1, a2, BT1, BT2, BS1M, BS2M, a1M, a2M, BT1M, BT2M];
y = specgen_pulse_only(y0_vec, t0, tfinal, params, @antagonistic, r12par, @antagonistic, r21par);

figure(1)
plot(t,y)
legend("S1", "I1", "S2", "I2")

