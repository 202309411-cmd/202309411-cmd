function  Dibujacaja(PointMatrix)
%DIBUJACAJA Summary of this function goes here
%   Detailed explanation goes here

P1 = PointMatrix(:,1);
P2 = PointMatrix(:,2);
P3 = PointMatrix(:,3);
P4 = PointMatrix(:,4);
P5 = PointMatrix(:,5);
P6 = PointMatrix(:,6);
P7 = PointMatrix(:,7);
P8 = PointMatrix(:,8);

% Dibujando Base
Dibujalinea(P1,P2, 'white');
Dibujalinea(P1, P3, 'white');
Dibujalinea(P2, P4, 'white');
Dibujalinea(P3, P4, 'white');

% Dibujamos Tapa
Dibujalinea(P5,P6, 'white');
Dibujalinea(P5, P7, 'white');
Dibujalinea(P6, P8, 'white');
Dibujalinea(P7, P8, 'white');

% Dibujar Paredes
Dibujalinea(P1, P5, 'white');
Dibujalinea(P2, P6, 'white');
Dibujalinea(P3, P7, 'white');
Dibujalinea(P4, P8, 'white');

end