function PointMatrix = Calculapuntos(L1,L2,L3,Theta1,Theta2,Theta3)

P0 = [0;0;0;1];

R1 = MatrizRotacionZ(Theta1);

T1 = MatrizTraslacionX(L1);

M1 = R1*T1;

P1 = M1*P0;

R2 = MatrizRotacionZ(Theta2);

T2 = MatrizTraslacionX(L2);

M2 = M1*R2*T2;

P2 = M2*P0;

R3 = MatrizRotacionZ(Theta3);

T3 = MatrizTraslacionX(L3);

M3 = M2*R3*T3;

P3 = M3*P0;

PointMatrix = [P0 P1 P2 P3];

end