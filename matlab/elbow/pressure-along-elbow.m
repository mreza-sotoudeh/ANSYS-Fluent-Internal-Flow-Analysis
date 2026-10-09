% Import Data
x = pressure8diagram500(:, 1);
y_2_l = pressure2diagram500(:, 2);
y_8_l = pressure8diagram500(:, 2);
y_2_h = pressure2diagram10000(:, 2);
y_8_h = pressure8diagram10000(:, 2);

figure;

yyaxis left
plot(x, y_2_h, '--r', 'LineWidth', 1.5); hold on;
plot(x, y_8_h, '--m', 'LineWidth', 1.5);
ylabel('Pressure (Pa) at Re = 10000')
ylim([min([y_2_h; y_8_h]) max([y_2_h; y_8_h])])

yyaxis right
plot(x, y_2_l, '-b', 'LineWidth', 1.5);
plot(x, y_8_l, '-g', 'LineWidth', 1.5);
ylabel('Pressure (Pa) at Re = 500')
ylim([min([y_2_l; y_8_l]) max([y_2_l; y_8_l])])

xlabel('Iteration over elbow length')
title('Pressure Diagram for Different R/D Ratios and Reynolds Numbers')
legend('R/D=2, Re=10000', 'R/D=8, Re=10000', ...
       'R/D=2, Re=500', 'R/D=8, Re=500', 'Location', 'best');
grid on;
