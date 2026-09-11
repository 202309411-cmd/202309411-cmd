function Dibujalinea(PuntoInit,PuntoFin, color)
%DIBUJALINEA Summary of this function goes here
%   Detailed explanation goes here

DeltaX = [PuntoInit(1) PuntoFin(1)];
DeltaY = [PuntoInit(2) PuntoFin(2)];
DeltaZ = [PuntoInit(3) PuntoFin(3)];

line(DeltaX, DeltaY, DeltaZ, 'LineWidth',2,'Color',color);
end