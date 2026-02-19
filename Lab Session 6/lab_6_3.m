t = -10:10;

x = 1.*((t >= 0)&(t <=2));
h = (0.5.*((t >= 0)&(t <=2)))+(1.*((t >= 4)&(t <=6)));

u = conv(x, h);

subplot(3, 1, 1), stem(t, x); grid on;
xlabel('Time'); ylabel('Amplitude');
title('Input:x(t)');

subplot(3, 1, 2), stem(t, h); grid on;
xlabel('Time'); ylabel('Amplitude');
title('Input:h(t)');

n = (2*t(1)):(2*t(end));

subplot(3, 1, 3), stem(n, u); grid on;
xlabel('Time'); ylabel('Amplitude');
title('u(t):x(t)*h(t)');
