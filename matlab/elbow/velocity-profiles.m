%Import Data

plot(Before2(:, 1), Before2(:, 2), 'r--'); % حالا X: سرعت، Y: طول
hold on;
plot(Before8(:, 1), Before8(:, 2), 'b--');
plot(After2(:, 1), After2(:, 2), 'r:');
plot(After8(:, 1), After8(:, 2), 'b:');
plot(Elbow8(:, 1), Elbow8(:, 2), 'b-');
plot(Elbow2(:, 1), Elbow2(:, 2), 'r-');

legend('Before R/D=2', 'Before R/D=8', ...
       'After R/D=2', 'After R/D=8', ...
       'Elbow R/D=8', 'Elbow R/D=2', 'Location', 'best');

xlabel('Velocity [m/s]');
ylabel('Line Length [m]');
title('Velocity Profile');
grid on;
