
% For Unit Step
n = -4:10;
x = (ones(size(n))).*(n>=0);
subplot(2, 2, 1), plot(n, x, 'r');

% For ramp
y = n.*(n >= 0);
subplot(2, 2, 2), plot(n, y, 'b');

% For exponential
a = (ones(size(n))).*(n >= 0);
b = ((0.5).^n).*a;
subplot(2, 2, 3), plot(n, b, 'c');
