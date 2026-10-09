% Import StreamLines Data
xx = fluidlines(:, 1);
yy = fluidlines(:, 2);
zz = fluidlines(:, 3);
vx = fluidlines(:, 4);
vy = fluidlines(:, 5);
vz = fluidlines(:, 6);

x_min = min(xx);
x_max = max(xx);
y_min = min(yy);
y_max = max(yy);
z_min = min(zz);
z_max = max(zz);

spacing = 200;
x = linspace(x_min, x_max, spacing);
y = linspace(y_min, y_max, spacing);
z = linspace(z_min, z_max, spacing);

[X, Y, Z] = meshgrid(x, y, z);

f_vx = scatteredInterpolant(xx, yy, zz, vx);
f_vy = scatteredInterpolant(xx, yy, zz, vy);
f_vz = scatteredInterpolant(xx, yy, zz, vz);

slice_vx = reshape(f_vx(X, Y, Z), [spacing, spacing, spacing]);
slice_vy = reshape(f_vy(X, Y, Z), [spacing, spacing, spacing]);
slice_vz = reshape(f_vz(X, Y, Z), [spacing, spacing, spacing]);

N = 2000;
x_start = x_min + (x_max - x_min) * rand(N, 1);
y_start = y_min + (y_max - y_min) * rand(N, 1);
z_start = z_min + (z_max - z_min) * rand(N, 1);

streamline(X, Y, Z, slice_vx, slice_vy, slice_vz, x_start, y_start, z_start, [0.1, 200]);
xlabel('X'), ylabel('Y'), zlabel('Z')
title('3D Streamlines of Fluid Flow')
view(3)
camlight
lighting gouraud
axis tight
drawnow  % جلوگیری از گیر کردن
