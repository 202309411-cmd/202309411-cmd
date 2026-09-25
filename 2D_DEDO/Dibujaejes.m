function Dibujaejes(AxisLength)


Delta = [-AxisLength AxisLength];

line(Delta,[0 0],[0 0],'LineWidth',2,'Color','blue', 'LineStyle','-.');

line([0 0],Delta,[0 0],'LineWidth',2,'Color','red', 'LineStyle', '-.');

line([0 0],[0 0],Delta,'LineWidth',2,'Color','green', 'LineStyle', '-.');

view(0,90);

axis equal;

end