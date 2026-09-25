function Dibujadedo(PointMatrix)


P0 = PointMatrix(:,1);
P1 = PointMatrix(:,2);
P2 = PointMatrix(:,3);
P3 = PointMatrix(:,4);

Dibujalinea(P0,P1,'white');
Dibujalinea(P1,P2,'red');
Dibujalinea(P2,P3,'magenta');

end
