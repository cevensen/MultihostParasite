%Function to allow resident host-host-parasite equilibrium to establish,
%then pulse in a small number of parasites with a mutant strategy.
function [t,y] = specgen_pulse(y0_vec, t0, tfinal, params, r12func, r12par, r21func, r21par)
 [t_init, y_init] = ode45(@(t,y) specgeninvasion_model(t, y, params, r12func, r12par, r21func, r21par),[t0,tfinal],y0_vec);
 y0_pulse = y_init(end,:);
 y0_pulse(end,end-1) = y_init(end,2)/100;
 y0_pulse(end,end) = y_init(end,4)/100;
 [t,y] = ode45(@(t,y) specgeninvasion_model(t, y, params, r12func, r12par, r21func, r21par),[t0,tfinal],y0_pulse);
end