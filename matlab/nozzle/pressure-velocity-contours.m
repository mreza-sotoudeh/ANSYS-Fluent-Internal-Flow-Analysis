% Import Pressure Contour Data
x = MatLabNeededData(:, 1);
y = MatLabNeededData(:, 2);
pressure = MatLabNeededData(:, 3);
density = MatLabNeededData(:, 4);
velocity = MatLabNeededData(:, 5);
temperature = MatLabNeededData(:, 6);
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
f_d = scatteredInterpolant(x, y, density);
f_t = scatteredInterpolant(x, y, temperature);
p_n = reshape(f_p(X, Y), [spacing, spacing]);
v_n = reshape(f_v(X, Y), [spacing, spacing]);
d_n = reshape(f_d(X, Y), [spacing, spacing]);
t_n = reshape(f_t(X, Y), [spacing, spacing]);
[m, n] = find(v_n <= 0);
 for i=1:length(m)
     d_n(m(i), n(i)) = 0;
 end
contourf(X, Y, d_n, 50)
cb = colorbar;
ylabel(cb, 'Density (kg/m^3)')
title('Density Contour')
