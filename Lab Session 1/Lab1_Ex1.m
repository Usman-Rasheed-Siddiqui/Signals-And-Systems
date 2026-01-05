
t = [-2:0.002:2];
n = 1;

for loop = 1:8
    x = sin(n * pi * t);
    subplot(4, 2, loop), plot(t, x);
    xlabel('t');
    ylabel('x(t)');
    title(['Value of n = ' num2str(n)])
    n = n + 0.05;
end
