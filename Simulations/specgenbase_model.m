%Base model for one parasite, two hosts, with a parameters to tune
%various life history, ecological, and epidemiological traits.

function dy = specgenbase_model(t, y, params, r12func, r12par, r21func, r21par)

    S1 = y(1);
    I1 = y(2);
    S2 = y(3);
    I2 = y(4);

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
    
    %calculate interaction function values
    r12 = r12func(S1, I1, S2, I2, r12par, 0, 0); 
    r21 = r21func(S2, I2, S1, I1, r21par, 0, 0);
    
    %ODEs
    dS1 = b1*(1-q1*(S1 + I1))*S1 - d1*S1 + r12*S1 + g1*I1 - B11*BS1*BT1*S1*I1 - B12*BS1*BT2*S1*I2;
    dI1 = B11*BS1*BT1*S1*I1 + B12*BS1*BT2*S1*I2 - (d1 + a1 + g1)*I1;
    dS2 = b2*(1-q2*(S2 + I2))*S2 - d2*S2 + r21*S2 + g2*I2 - B22*BS2*BT2*S2*I2 - B21*BS2*BT1*S2*I1;
    dI2 = B22*BS2*BT2*S2*I2 + B21*BS2*BT1*S2*I1 - (d2 + a2 + g2)*I2;
    
    dy = [dS1; dI1; dS2; dI2];
end
