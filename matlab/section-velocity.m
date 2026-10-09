% Import Velocity Data
vel = velSec(:, 1);
y = velSec(:, 2);

plot(vel, y, "Color", "k", "LineWidth", 1.5);
xlabel("Velocity [m/s]");
ylabel("Position [m]");
title("Velocity Profile", "FontWeight", "bold");
