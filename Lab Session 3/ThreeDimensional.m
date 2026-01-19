
t = 0:0.1:10;
x = sin(t);
y = cos(t);
z = t;

plot3(x, y, z);
grid on;
xlabel('X'); ylabel('Y'); zlabel('Z');
title('3D Line Plot');