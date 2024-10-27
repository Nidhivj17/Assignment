v0 = 50;                
theta = 45;             
g = 9.81;               

theta_rad = deg2rad(theta);

v0_x = v0 * cos(theta_rad);  
v0_y = v0 * sin(theta_rad);  

t_flight = (2 * v0_y) / g;                  
max_height = (v0_y^2) / (2 * g);            
range = v0_x * t_flight;                    

t = linspace(0, t_flight, 100);

x = v0_x * t;                     
y = v0_y * t - 0.5 * g * t.^2;    

figure;
plot(x, y, 'b', 'LineWidth', 1.5);
hold on;

plot(range, 0, 'ro', 'MarkerFaceColor', 'r');         
plot(v0_x * (v0_y / g), max_height, 'go', 'MarkerFaceColor', 'g');  

xlabel('Range (m)');
ylabel('Height (m)');
title('Projectile Motion Trajectory');
legend('Trajectory', 'Range', 'Max Height');
grid on;
hold off;

fprintf('Time of Flight: %.2f seconds\n', t_flight);
fprintf('Maximum Height: %.2f meters\n', max_height);
fprintf('Range: %.2f meters\n', range);