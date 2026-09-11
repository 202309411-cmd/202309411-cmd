function newPoint = RotarCaja(theta, PointMatrix, eje)
if eje == 'x'
    R = Rx(theta);
elseif eje == 'y'
    R = Ry(theta);
else
    R = Rz(theta);
end

P1 = PointMatrix(:,1);
P2 = PointMatrix(:,2);
P3 = PointMatrix(:,3);
P4 = PointMatrix(:,4);
P5 = PointMatrix(:,5);
P6 = PointMatrix(:,6);
P7 = PointMatrix(:,7);
P8 = PointMatrix(:,8);

P1T = R*P1;
P2T = R*P2;
P3T = R*P3;
P4T = R*P4;
P5T = R*P5;
P6T = R*P6;
P7T = R*P7;
P8T = R*P8;

newPoint = [P1T, P2T, P3T, P4T, P5T, P6T, P7T, P8T];
end