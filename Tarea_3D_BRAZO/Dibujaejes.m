function Dibujaejes(AxisLength)


Delta = [-AxisLength AxisLength];

line(Delta,[0 0],[0 0],'LineWidth',2,'Color','blue');

line([0 0],Delta,[0 0],'LineWidth',2,'Color','red');

line([0 0],[0 0],Delta,'LineWidth',2,'Color','green');

view(3);

axis equal;

end