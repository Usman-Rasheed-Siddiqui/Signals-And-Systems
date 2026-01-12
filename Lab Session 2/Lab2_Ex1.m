
t = 0:0.1:15;
x1 = 5*sin((pi/4)*t);
x2 = 3*cos((pi/7)*t);

% Plotting Signals
subplot(4, 2, 1), plot(x1);
title('x1 = 5sin((π/4t)');
xlabel('time (sec)');
ylabel('x1');

subplot(4, 2, 2), plot(x2);
title('x2 = 3cos((π/7t)');
xlabel('time (sec)');
ylabel('x2');

%Two signals

% Adding
y1 = x1 + x2;
subplot(4, 2, 3), plot(y1);
title('y1 = x1 + x2');
xlabel('time (sec)');
ylabel('y1');

% Subtracting
y2 = x1 - x2;
subplot(4, 2, 4), plot(y2);
title('y2 = x1 - x2');
xlabel('time (sec)');
ylabel('y2');

% Multiplication
y3 = x1.*x2;
subplot(4, 2, 5), plot(y3);
title('y3 = x1 * x2');
xlabel('time (sec)');
ylabel('y3');

% Division
y4 = x1./x2;
subplot(4, 2, 6), plot(y4);
title('y4 = x1 / x2');
xlabel('time (sec)');
ylabel('y4');

% Static Multiplication
y5 = 2 * x1;
subplot(4, 2, 7), plot(y5);
title('y5 = 2 * x1');
xlabel('time (sec)');
ylabel('y5');

% Exponential
y6 = x2.^3;
subplot(4, 2, 8), plot(y6);
title('y6 = x2 \^ 3');
xlabel('time (sec)');
ylabel('y6');
