function fig = BoxPlotTimeSeries(t, data)
%BoxPlotTimeSeries Plots time series boxplot
GRAY = [100, 100, 100]/255;

min = data(:, 1);
q2 = data(:, 2);
q3 = data(:, 3);
q4 = data(:, 4);
max = data(:, 5);

% TODO: make this less ugly
x = [t; flipud(t)];
aq1 = [q2; flipud(q3)];
aq2 = [q3; flipud(q4)];

fig = figure();
hold on;

% Plotting curves
%plot(t, data, 'k');
plot(t, min, 'k:');
plot(t, max, 'k:');
plot(t, q2, 'k--');
plot(t, q3, 'k');
plot(t, q4, 'k--');
%plot(t, [q2, q3, q4], 'k');

% Filling 95% areas
h = fill(x, aq1, GRAY)
set(h, 'facealpha', 0.25);
h = fill(x, aq2, GRAY)
set(h, 'facealpha', 0.25);

xlabel('time (s)')
ylabel('y','FontSize', 14);
title('title','FontSize', 14);
grid;
hold off;
end

 
