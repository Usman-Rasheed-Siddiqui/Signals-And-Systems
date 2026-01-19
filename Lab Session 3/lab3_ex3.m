
t = 0:0.005:1;
x = sin(20*pi*t);

subplot(3, 3, 1); plot(t, x);
title("Original x");
axis([0 1 -1 1]); grid on;
xlabel('t'), ylabel('sin(20\pit)');

subplot(3, 3, 2); plot(t, x);
title("Original x");
axis([0 1 -1 1]); grid on;
xlabel('t'), ylabel('sin(20\pit)');

subplot(3, 3, 3); plot(t, x);
title("Original x");
axis([0 1 -1 1]); grid on;
xlabel('t'), ylabel('sin(20\pit)');

Fs1 = 100;
Fs2 = 20;
Fs3 = 10;

n1 = 0:1/Fs1:1;
n2 = 0:1/Fs2:1;
n3 = 0:1/Fs3:1;

x1n = sin(20*pi*n1);
x2n = sin(20*pi*n2);
x3n = sin(20*pi*n3);

subplot(3,3,4), stem(n1, x1n);
title("Sampled x with (Fs = 100 Hz)");
axis([0 1 -1 1]); grid on;
xlabel('n'), ylabel('sin(20\pin)');

subplot(3,3,5), stem(n2, x2n);
title("Sampled x with (Fs = 20 Hz)");
axis([0 1 -1 1]); grid on;
xlabel('n'), ylabel('sin(20\pin)');

subplot(3,3,6), stem(n3, x3n);
title("Sampled x with (Fs = 10 Hz)");
axis([0 1 -1 1]); grid on;
xlabel('n'), ylabel('sin(20\pin)');

y1 = spline(n1, x1n, t);
y2 = spline(n2, x2n, t);
y3 = spline(n3, x3n, t);

subplot(3,3,7), plot(t, y1);
title("Reconstructed x (Fs = 100 Hz)");
axis([0 1 -1 1]); grid on;
xlabel('t'), ylabel('sin(20\pit)');

subplot(3,3,8), plot(t, y2);
title("Reconstructed x (Fs = 20 Hz)");
axis([0 1 -1 1]); grid on;
xlabel('t'), ylabel('sin(20\pit)');

subplot(3,3,9), plot(t, y3);
title("Reconstructed x (Fs = 10 Hz)");
axis([0 1 -1 1]); grid on;
xlabel('t'), ylabel('sin(20\pit)');
