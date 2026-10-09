% Import Pressure Data
x = plotpress(:, 1);
y = plotpress(:, 2);
plot(x, y, "k", "LineWidth", 2.5)
xlabel("Length [m]", 'FontSize', 13, 'FontWeight', 'bold');
ylabel("Pressure [Pa]", 'FontSize', 13, 'FontWeight', 'bold');
title("Pressure graph along Diffuser", "FontWeight","bold", "FontSize", 15);
grid minor;