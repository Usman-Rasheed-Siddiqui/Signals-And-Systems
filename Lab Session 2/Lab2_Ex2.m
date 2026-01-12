
n = -10:10;

delta = (ones(size(n))).*(n == 0);              % δ(n)
deltaNeg5 = (ones(size(n))).*(n == 5);          % δ(n - 5)

unitStep5 = (ones(size(n))).*(n>= -5);          % u(n + 5)
unitStepNeg5 = (ones(size(n))).*(n>= 5);        % u(n - 5)

unitStep6 = (ones(size(n))).*(n >= -6);         % u(n + 6)
unitStepNeg6 = (ones(size(n))).*(n >= 6);       % u(n - 6)

unitStep4 = (ones(size(n))).*(n >= -4);         % u(n + 4)
unitStepNeg4 = (ones(size(n))).*(n >= 4);       % u(n - 4)

unitStepNeg10 = (ones(size(n))).*(n >= 10);     % u(n - 10)

x1 = (n.^2).*( unitStep5 - unitStepNeg6) + (10*delta) + 20*((0.5).^n).*(unitStepNeg4 - unitStepNeg10);
x2 = ((0.2).^n).*(unitStepNeg5 + unitStep6).*deltaNeg5 + 20.*(((0.5).^n).*unitStep4);

subplot(2, 1, 1), stem(x1, 'filled');
xlabel('n');
ylabel('x1');

subplot(2, 1, 2), stem(x2, 'filled');
xlabel('n');
ylabel('x2');


