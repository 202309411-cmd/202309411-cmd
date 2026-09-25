function Dibujalinea(PuntoInit,PuntoFin,color)


DeltaX = [PuntoInit(1) PuntoFin(1)];

DeltaY = [PuntoInit(2) PuntoFin(2)];

DeltaZ = [PuntoInit(3) PuntoFin(3)];

line(DeltaX,DeltaY,DeltaZ,'LineWidth',4,'Color',color);
line(DeltaX, DeltaY, DeltaZ, 'LineWidth', 4, 'Color', color, 'Marker', 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'yellow', 'MarkerEdgeColor', 'black');

end
