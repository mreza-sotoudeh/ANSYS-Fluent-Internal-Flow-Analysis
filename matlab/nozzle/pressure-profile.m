% x = Pressure(:, 1);
% y = Pressure(:,2);
% plot(x, y, LineWidth= 1.2)
% title('Pressure Chart Through The Laval nozzle')
% xlabel("Chart Count", FontWeight="bold")
% ylabel("Pressure (Pa)", FontWeight="bold")
% grid minor


x = velocity(:, 1);
y = velocity(:,2);
plot(x, y, LineWidth= 1.2)
title('Velocity Chart Through The Laval nozzle')
xlabel("Chart Count", FontWeight="bold")
ylabel("Velocity (m/s)", FontWeight="bold")
grid minor
