function plot_data

hfig = figure;  % save the figure handle in a variable
t = 0:0.02:10; x = t.*sin(2*pi*t)+ 2*rand(1,length(t)); % data
plot(t,x,'k-','LineWidth',1.5,'DisplayName','$\Omega(t)$');
xlabel('time $t$ (s)')
ylabel('$\Omega$ (V)')
fname = 'myfigure';

picturewidth = 20; % set this parameter and keep it forever
hw_ratio = 0.65; % feel free to play with this ratio
set(findall(hfig,'-property','FontSize'),'FontSize',17) % adjust fontsize to your document
set(findall(hfig,'-property','Interpreter'),'Interpreter','latex')
set(findall(hfig,'-property','TickLabelInterpreter'),'TickLabelInterpreter','latex')
set(hfig,'Units','centimeters','Position',[3 3 picturewidth hw_ratio*picturewidth])
pos = get(hfig,'Position');
set(hfig,'PaperPositionMode','Auto','PaperUnits','centimeters','PaperSize',[pos(3), pos(4)])
print(hfig,fname,'-dpdf','-painters','-fillpage')


end