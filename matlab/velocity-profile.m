y = VelProf(:, 1);
z = VelProf(:, 2);
vel = VelProf(:, 3);
y_min = min(y);
z_min = min(z);
y_max = max(y);
z_max = max(z);
spacing = 100;
y_n = linspace(y_min, y_max, spacing);
z_n = linspace(z_min, z_max, spacing);
[Y, Z] = meshgrid(y_n, z_n);
f_vel = scatteredInterpolant(y, z, vel);
vel_n = f_vel(Y, Z);
contourf(Y, Z, vel_n, 100)
colorbar;
xlabel("y [m]");
ylabel("z [m]");