% Import Pressure Contour Data
x = pressurecontour(:, 1);
y = pressurecontour(:, 2);
pressure = pressurecontour(:, 3);
velocity = velocitycontour(:, 4);
x_min = min(x);
x_max = max(x);
y_min = min(y);
y_max = max(y);
spacing = 100;
x_n = linspace(x_min, x_max, spacing);
y_n = linspace(y_min, y_max, spacing);
[X, Y] = meshgrid(x_n, y_n);
f_p = scatteredInterpolant(x, y, pressure);
f_v = scatteredInterpolant(x, y, velocity);
p_n = reshape(f_p(X, Y), [spacing, spacing]);
v_n = reshape(f_v(X, Y), [spacing, spacing]);
[m, n] = find(v_n <= 0);
 for i=1:length(m)
     v_n(m(i), n(i)) = 0;
 end
contourf(X, Y, v_n, 50)
cb = colorbar;
ylabel(cb, 'Velocity (m/s)')
title('Velocity Contour')
