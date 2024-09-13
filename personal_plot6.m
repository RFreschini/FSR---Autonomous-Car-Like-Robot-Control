function h = personal_plot5(x, y, x_label_latex, y_label_latex, pdf_name)

set(0, 'DefaultTextInterpreter', 'latex')
set(0, 'DefaultLegendInterpreter', 'latex')
set(0, 'DefaultAxesTickLabelInterpreter', 'latex')
lw = 0.5;

h = figure('Renderer', 'painters', 'Position', [10 10 900 300]);
removeToolbarExplorationButtons(h)

plot(x, y, 'k-', 'Linewidth', lw ,'Color', [0.2, 0.2, 0.2]);
xlim([x(1) x(end)])

xlabel(x_label_latex)
ylabel(y_label_latex)
set(gca, 'FontSize',18);
grid on
box on
set(gcf,'color','w');
% exportgraphics(h, pdf_name,'Resolution',600);

end
