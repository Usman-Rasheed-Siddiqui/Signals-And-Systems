n = -6:3;
x = [2, 3, -1, 5, 4, 2, 3, 4, 6, 1];
figure, stem(n, x)
title('Example DT Sinusoid');
xlabel('samples');
ylabel('Amplitude');

t = [-2:0.002:2];
x = 10 * sin(pi * t);
figure,plot(t, x);
title('Example CT Sinusoid');
xlabel('samples');
ylabel('Amplitude');
