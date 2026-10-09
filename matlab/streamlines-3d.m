% Import Data
xx = Linesdata(:, 1);
yy = Linesdata(:, 2);
zz = Linesdata(:, 3);
vx = Linesdata(:, 4);
vy = Linesdata(:, 5);
vz = Linesdata(:, 6);

x_min = min(xx);
x_max = max(xx);
y_min = min(yy);
y_max = max(yy);
z_min = min(zz);
z_max = max(zz);

spacing = 10;
x = linspace(x_min, x_max, spacing);
y = linspace(y_min, y_max, spacing);
z = linspace(z_min, z_max, spacing);

[X, Y, Z] = meshgrid(x, y, z);

F_vx = scatteredInterpolant(xx, yy, zz, vx);
F_vy = scatteredInterpolant(xx, yy, zz, vy);
F_vz = scatteredInterpolant(xx, yy, zz, vz);

Vx = F_vx(X, Y, Z);
Vy = F_vy(X, Y, Z);
Vz = F_vz(X, Y, Z);

N = 1500;
x_start = x_min + (x_max - x_min) * rand(N, 1);
y_start = y_min + (y_max - y_min) * rand(N, 1);
z_start = z_min + (z_max - z_min) * rand(N, 1);

streamline(X, Y, Z, Vx, Vy, Vz, x_start, y_start, z_start, [0.1, 200]);

xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title('Streamline Plot');
grid on;
