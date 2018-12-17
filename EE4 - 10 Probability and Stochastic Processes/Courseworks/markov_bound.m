a = 60;
moment = zeros(a, 1);
p = zeros(a, 1);
for n = 1: a
    % odd
    if mod(n, 2)
        k = (n - 1) / 2;
        moment(n) = 2 ^ k * factorial(k) * sqrt(2 / pi);
    else
        moment(n) = prod(1: 2: n - 1);
    end
    p(n) = moment(n) / (4 ^ n);
end
plot(p);
title(['Markov bound for k = 1 - ', num2str(a)]);
