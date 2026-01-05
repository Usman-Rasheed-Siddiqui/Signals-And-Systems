
t = [-2:0.002:2];
x = 3 * sin(pi * t);
y = 3 * cos(pi * t);

plot(t, y, 'r-', t, x, 'b--');
legend('Sin Curve', 'Cosine Curve');

