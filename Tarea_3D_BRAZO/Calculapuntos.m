function PointMatrix = Calculapuntos(L1, L2, L3, Theta1, Theta2, Theta3)
    % Base
    P0 = [0; 0; 0];
    H0 = eye(4);

    % Articulación 1: Rz(Theta1) * Tz(L1)
    H01 = MatrizRotacionZ(Theta1) * MatrizTraslacionZ(L1);
    T1 = H0 * H01;
    P1 = T1(1:3, 4);

    % Articulación 2: Rx(90 grados) * Rz(Theta2) * Tx(L2)
    H12 = MatrizRotacionX(pi/2) * MatrizRotacionZ(Theta2) * MatrizTraslacionX(L2);
    T2 = T1 * H12;
    P2 = T2(1:3, 4);

    % Articulación 3: Rz(Theta3) * Tx(L3)
    H23 = MatrizRotacionZ(Theta3) * MatrizTraslacionX(L3);
    T3 = T2 * H23;
    P3 = T3(1:3, 4);

    % Guardar todos los puntos en una matriz
    PointMatrix = [P0, P1, P2, P3];
end