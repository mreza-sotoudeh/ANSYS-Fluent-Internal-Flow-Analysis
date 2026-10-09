% Import Pressure and Velocity Data
x = VelPressCont(:, 2);
y = VelPressCont(:, 3);
p = VelPressCont(:, 5);
v = VelPressCont(:, 6);
x_min = min(x);
x_max = max(x);
y_min = min(y);
y_max = max(y);
spacing = 200;
x_n = linspace(x_min, x_max, spacing);
y_n = linspace(y_min, y_max, spacing);
[X, Y] = meshgrid(x_n, y_n);
f_p = scatteredInterpolant(x, y, p);
f_v = scatteredInterpolant(x, y, v);
p_n = reshape(f_p(X, Y), [spacing spacing]);
v_n = reshape(f_v(X, Y), [spacing spacing]);
[m, n] = find(v_n <= 0);
for i = 1:length(m)
    v_n(m(i), n(i)) = 0;
    p_n(m(i), n(i)) = 10;
end

%contourf(X, Y, v_n, 75)
contourf(X, Y, v_n, 50)
cb = colorbar;
cb = colorbar;
ylabel(cb, 'Velocity (m/s)', 'FontWeight','bold')
title('Velocity Contour', FontWeight='bold')
