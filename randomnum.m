n = 100;                    
random_numbers = rand(1, n); 

figure;
plot(random_numbers, '-o', 'Color', [0, 0.5, 0.8], 'LineWidth', 1.5);
xlabel('Index');
ylabel('Random Value');
title('Line Plot of Random Number Sequence');
grid on;
legend('Random Numbers');