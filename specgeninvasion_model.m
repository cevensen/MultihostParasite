%Invasion model for one parasite, two hosts, with parameters to tune
%various life history, ecological, and epidemiological traits. Includes
%dynamics of both resident parasite transmission and mutant parasite
%transmission.

function dy = specgeninvasion_model(t, y, params, r12func, r12par, r21func, r21par)

    S1 = y(1);
    I1 = y(2);
    S2 = y(3);
    I2 = y(4);
    I1M = y(5);
    I2M = y(6);

    b1 = params(1);
    b2 = params(2);
    q1 = params(3);
    q2 = params(4);
    d1 = params(5);
    d2 = params(6);
    g1 = params(7);
    g2 = params(8);
    B11 = params(9);
    B12 = params(10);
    B22 = params(11);
    B21 = params(12);
    BS1 = params(13);
    BS2 = params(14);
    a1 = params(15);
    a2 = params(16);
    BT1 = params(17);
    BT2 = params(18);
    BS1M = params(19);
    BS2M = params(20);
    a1M = params(21);
    a2M = params(22);
    BT1M = params(23);
    BT2M = params(24);
    
    %calculate interaction function values
    r12 = r12func(S1, I1, S2, I2, r12par, I1M, I2M); 
    r21 = r21func(S2, I2, S1, I1, r21par, I2M, I1M);
    
    %ODEs 
    dS1 = b1*(1-q1*(S1 + I1+I1M))*S1 - d1*S1 + r12*S1 + g1*I1 - B11*BS1*BT1*S1*I1 - B12*BS1*BT2*S1*I2 - B11*BS1M*BT1M*S1*I1M - B12*BS1M*BT2M*S1*I2M + g1*I1M;
    dI1 = B11*BS1*BT1*S1*I1 + B12*BS1*BT2*S1*I2 - (d1 + a1 + g1)*I1;
    dS2 = b2*(1-q2*(S2 + I2+I2M))*S2 - d2*S2 + r21*S2 + g2*I2 - B22*BS2*BT2*S2*I2 - B21*BS2*BT1*S2*I1- B22*BS2M*BT2M*S2*I2M - B21*BS2M*BT1M*S2*I1M + g2*I2M;
    dI2 = B22*BS2*BT2*S2*I2 + B21*BS2*BT1*S2*I1 - (d2 + a2 + g2)*I2;
    dI1M = B11*BS1M*BT1M*S1*I1M + B12*BS1M*BT2M*S1*I2M - (d1 + a1M + g1)*I1M;
    dI2M = B22*BS2M*BT2M*S2*I2M + B21*BS2M*BT1M*S2*I1M - (d2 + a2M + g2)*I2M;
    
    dy = [dS1; dI1; dS2; dI2; dI1M; dI2M];
end
