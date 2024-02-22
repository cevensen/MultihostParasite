%Function allowing resident parasite equilibrium to establish 
function y0_pulse = specgen_pulse_only(y0_vec, t0, tfinal, params, r12func, r12par, r21func, r21par)
 [t_init, y_init] = ode45(@(t,y) specgenbase_model(t, y, params, r12func, r12par, r21func, r21par),[t0,tfinal/100],y0_vec);
 y0_pulse = y_init(end,:);
end
