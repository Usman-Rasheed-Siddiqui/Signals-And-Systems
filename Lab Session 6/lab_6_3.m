
t = -10:10;

x = 1.*((t >= 0)&(t <=2));
h = (0.5.*((t >= 0)&(t <=2)))|(1.*((t >= 4)&(t <=6)));

u = conv(x, h);

a = 0; b = 0;

p = a: a + (length(x) - 1);
subplot(3, 1, 1), stem(p, x); grid on;
xlabel('Time'); ylabel('Amplitude');
title('Input:x(t)');

q = b: b + (length(h) - 1);
subplot(3, 1, 2), stem(q, h); grid on;
xlabel('Time'); ylabel('Amplitude');
title('Input:h(t)');

n = (a + b) : (a + b + length(u) - 1);
subplot(3, 1, 3), stem(n, u); grid on;
xlabel('Time'); ylabel('Amplitude');
title('u(t):x(t)*h(t)');


