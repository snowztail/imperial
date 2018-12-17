clear; close all;
nSteps = 1e5;
alphabet = [-1 1];
prob = [2/3 1/3; 1/2 1/2; 1/3 2/3];
nCases = length(prob);
for iCase = 1: nCases
    x = zeros(1, nSteps);
    for iStep = 2: nSteps
        if x(iStep - 1) ~=0
            x(iStep) = x(iStep - 1) + randsrc(1, 1, [alphabet; prob(iCase, :)]);
        else
            x(iStep) = 1;
        end
    end
    figure(iCase);
    stem(x, '.');
    xlabel('Steps');
    ylabel('Distance');
    legend(['p = ', num2str(prob(iCase, 2))]);
    title(['Random Walk with Advancing Probability ', num2str(prob(iCase, 2))]);
end
