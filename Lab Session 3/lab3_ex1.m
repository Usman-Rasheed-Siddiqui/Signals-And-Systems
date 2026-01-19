
t = 0:0.005:5;
x1 = cos(2*pi*t);
x2 = cos(14*pi*t);

subplot(3,2,1), plot(t, x1);
title("Original x1");
axis([0 5 -1 1]); grid on;
xlabel('t'), ylabel('cos2\pit');

subplot(3,2,2), plot(t, x2);
title("Original x2");
axis([0 5 -1 1]); grid on;
xlabel('t'), ylabel('cos14\pit');


Fs = 3;
n = 0:1/Fs:5;
x1n = cos(2*pi*n);
x2n = cos(14*pi*n);

subplot(3,2,3), stem(n, x1n);
title("Sampled x1");
axis([0 5 -1 1]); grid on;
xlabel('n'), ylabel('cos2\pin');

subplot(3,2,4), stem(n, x2n);
title("Sampled x2");
axis([0 5 -1 1]); grid on;
xlabel('n'), ylabel('cos14\pin');

y1 = spline(n, x1n, t);
y2 = spline(n, x2n, t);

subplot(3,2,5), plot(t, y1);
title("Reconstructed x1");
axis([0 5 -1 1]); grid on;
xlabel('t'), ylabel('cos2\pit');

subplot(3,2,6), plot(t, y2);
title("Reconstructed x2");
axis([0 5 -1 1]); grid on;
xlabel('t'), ylabel('cos14\pit');

