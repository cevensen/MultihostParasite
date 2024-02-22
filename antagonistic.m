%General function for species interactions; M refers to infections from
%mutant parasite
function r_ij = antagonistic(Si, Ii, Sj, Ij, par, MIi, MIj)
    r_ij = par*(Sj + Ij + MIj);
end
