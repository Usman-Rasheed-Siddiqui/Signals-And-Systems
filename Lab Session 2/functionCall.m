
t = -0.5:0.01:0.5;
x = cos(pi*t);

[y, n] = SigShift(x, t, 0.5);

plot(t, x, 'r', n, y, 'g');
xlabel('time (sec)');
ylabel('x');
title('Shift Delay Graph');
legend('cos(πt)', 'cos(0.5*πt)');