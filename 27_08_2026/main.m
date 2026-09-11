clear all
close all

[Ancho,Largo,Alto] = Leerdimensiones();
fprintf("Ancho: %f | Largo: %f | Alto: %f\n" ,Ancho,Largo,Alto);

PointMatrix = Dibujarmatriz(Largo,Ancho,Alto,0,0,0);

eje = input('Indica el eje de rotacion (x, y, z): ', 's');
theta = input('Indica el angulo de rotacion [rad]: ');

AnimarCaja(PointMatrix, eje, theta);