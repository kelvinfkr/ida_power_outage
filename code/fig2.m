return_period_1000 = linspace(1, 1000, 1000);
load('../data/interp_fig2.mat')

% Plotting
fig = figure;

% Subplot for power outage
subplot(2,1,1);
% Current condition
semilogx(return_period_1000, interp_power_outage_current_y, 'b', 'linewidth', 2);
hold on;
fill([return_period_1000 fliplr(return_period_1000)], [interp_power_outage_current_lower fliplr(interp_power_outage_current_upper)], 'b', 'facealpha', 0.3, 'edgecolor', 'none');
% SSP5 8.5
semilogx(return_period_1000, interp_power_outage_585_y, 'r', 'linewidth', 2);
fill([return_period_1000 fliplr(return_period_1000)], [interp_power_outage_585_lower fliplr(interp_power_outage_585_upper)], 'r', 'facealpha', 0.3, 'edgecolor', 'none');
% SSP2 4.5
semilogx(return_period_1000, interp_power_outage_245_y, 'y', 'linewidth', 2);
fill([return_period_1000 fliplr(return_period_1000)], [interp_power_outage_245_lower fliplr(interp_power_outage_245_upper)], 'y', 'facealpha', 0.3, 'edgecolor', 'none');
% Add guideline
semilogx([1,1000],[206,206],'k--','LineWidth',2);
semilogx([64,64],[0,3500],'k--','LineWidth',2);
xlim([1,1000]);
ylim([0,3000]);
grid on;

% Subplot for compound hazard
subplot(2,1,2);
% Current condition
semilogx(return_period_1000, interp_compound_current_y, 'b', 'linewidth', 2);
hold on;
fill([return_period_1000 fliplr(return_period_1000)], [interp_compound_current_lower fliplr(interp_compound_current_upper)], 'b', 'facealpha', 0.3, 'edgecolor', 'none');
% SSP5 8.5
semilogx(return_period_1000, interp_compound_585_y, 'r', 'linewidth', 2);
fill([return_period_1000 fliplr(return_period_1000)], [interp_compound_585_lower fliplr(interp_compound_585_upper)], 'r', 'facealpha', 0.3, 'edgecolor', 'none');
% SSP2 4.5
semilogx(return_period_1000, interp_ssp245_y, 'y', 'linewidth', 2);
fill([return_period_1000 fliplr(return_period_1000)], [interp_ssp245_lower fliplr(interp_ssp245_upper)], 'y', 'facealpha', 0.3, 'edgecolor', 'none');
% Add guidelines
semilogx([1,1000],[41,41],'k--','LineWidth',2);
semilogx([278,278],[0,600],'k--','LineWidth',2);
xlim([1,1000]);
grid on;
hold off;
saveas(fig, '../results/fig2.png');