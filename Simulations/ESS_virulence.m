%Function to find the ESS virulence from a previously generated PIP
function vir = ESS_virulence(pip, vec)
%pip is a pairwise invasion matrix where the rows are resident values
%vec is the vector of resident and mutant parameter values
sums = zeros(1,length(pip));
for i = 1: length(pip)
    sum = 0;
    for j = 1:length(pip)
        if pip(i,j) == 0
            sum = sum+1;
        end
        if pip(j,i) == 1
            sum = sum+1;
        end
    end
    sums(i) = sum; 
    [M,I] = max(sums);
    vir = vec(I);
end
