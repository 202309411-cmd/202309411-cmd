function Dibujalinea(PuntoInit, PuntoFin, color)

    X = [PuntoInit(1), PuntoFin(1)];
    Y = [PuntoInit(2), PuntoFin(2)];
    Z = [PuntoInit(3), PuntoFin(3)];
    
    line(X, Y, Z, 'LineWidth', 4, 'Color', color, ...
         'Marker', 'o', 'MarkerSize', 6, ...
         'MarkerFaceColor', 'cyan', 'MarkerEdgeColor', 'cyan');
end