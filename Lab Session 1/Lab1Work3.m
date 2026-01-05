
t = [-2:0.002:2];
x = 3 * sin(-2 * pi * t);
y = 3 * cos(-2 * pi * t);
u = 3 * sin(-5 * pi * t);
v = 3 * cos(-5 * pi * t);

subplot(2, 2, 1), plot(t, x, 'r');
xlabel('t'), ylabel('x');

subplot(2, 2, 2), plot(t, y, 'g');
xlabel('t'), ylabel('y');

subplot(2, 2, 3), plot(t, u, 'b');
xlabel('t'), ylabel('u');

subplot(2, 2, 4), plot(t, v, 'k');
xlabel('t'), ylabel('v');
