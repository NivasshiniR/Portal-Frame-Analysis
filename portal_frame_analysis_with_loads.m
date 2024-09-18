
% Portal Frame Analysis with User Input
clear;
clc;
members = {'Column1', 'Beam1', 'Column2'};
widths = zeros(1, 3);
heights = zeros(1, 3);
lengths = zeros(1, 3);
moments_of_inertia = zeros(1, 3);
youngs_modulus = zeros(1, 3);
load_type = cell(1, 3);
load_magnitude = zeros(1, 3);
load_location = zeros(1, 3);
widths(1) = 0.2;
heights(1) = 0.3;
lengths(1) = 5.0;
moments_of_inertia(1) = 0.00044999999999999993;
youngs_modulus(1) = 200000000000.0;
widths(2) = 0.2;
heights(2) = 0.3;
lengths(2) = 5.0;
moments_of_inertia(2) = 0.00044999999999999993;
youngs_modulus(2) = 200000000000.0;
widths(3) = 0.2;
heights(3) = 0.3;
lengths(3) = 5.0;
moments_of_inertia(3) = 0.00044999999999999993;
youngs_modulus(3) = 200000000000.0;
load_type{1} = 'point';
load_magnitude(1) = 30;
load_location(1) = nil;
load_type{2} = 'point';
load_magnitude(2) = 30;
load_location(2) = 2.5;
load_type{3} = 'point';
load_magnitude(3) = 30;
load_location(3) = nil;

% Plotting the Portal Frame
figure;
hold on;
for i = 1:2
    rectangle('Position', [i-1, 0, widths(i), heights(i)], 'FaceColor', 'b', 'EdgeColor', 'k');
end
rectangle('Position', [0, heights(1), widths(2), 0.1], 'FaceColor', 'r', 'EdgeColor', 'k');
xlim([-0.5, 2]);
ylim([0, max(heights) + 1]);
xlabel('Width (m)');
ylabel('Height (m)');
title('Portal Frame Diagram with Loads');
grid on;
hold off;
