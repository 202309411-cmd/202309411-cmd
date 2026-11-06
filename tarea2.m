clc;
clear;
close all;

a = input("Longitud del primer eslabon [m]: ");
b = input("Longitud del segundo eslabon [m]: ");
altura = input("Altura de la base [m]: ");

px = input("Posicion deseada X [m]: ");
py = input("Posicion deseada Y [m]: ");

if a <= 0 || b <= 0
    error("Las longitudes deben ser mayores que cero");
end

if altura < 0
    error("La altura debe ser mayor o igual a cero");
end

disp("1. Codo arriba");
disp("2. Codo abajo");
opcion = input("Selecciona una opcion: ");

if opcion < 1 || opcion > 2
    error("Opcion no valida");
end

xr = px;
yr = py - altura;

distancia = sqrt(xr^2 + yr^2);

maximo = a + b;
minimo = abs(a - b);

if distancia > maximo || distancia < minimo
    error("El robot no puede alcanzar ese punto");
end

valor = (xr^2 + yr^2 - a^2 - b^2)/(2*a*b);

if opcion == 1
    q2 = -acos(valor);
else
    q2 = acos(valor);
end

q1 = atan2(yr,xr) - atan2(b*sin(q2),a + b*cos(q2));

disp("Angulo 1 en radianes:");
disp(q1);

disp("Angulo 2 en radianes:");
disp(q2);

disp("Angulo 1 en grados:");
disp(q1*180/pi);

disp("Angulo 2 en grados:");
disp(q2*180/pi);

disp("Distancia al punto:");
disp(distancia);

disp("Alcance maximo:");
disp(maximo);

disp("Alcance minimo:");
disp(minimo);

lim = a + b + altura + 0.5;

for t = 0:0.02:1

    q1Actual = t*q1;
    q2Actual = t*q2;

    xA = 0;
    yA = altura;

    xB = xA + a*cos(q1Actual);
    yB = yA + a*sin(q1Actual);

    xC = xB + b*cos(q1Actual + q2Actual);
    yC = yB + b*sin(q1Actual + q2Actual);

    clf;
    hold on;
    grid on;
    axis equal;

    axis([-lim lim -0.5 lim]);

    xlabel("X [m]");
    ylabel("Y [m]");
    title("Robot 2R con base");

    line([0 0],[0 altura], ...
        "Color",[0.5 0.5 0.5],"LineWidth",8);

    scatter(px,py,100,'filled', ...
        'MarkerFaceColor','red');

    line([xA xB],[yA yB], ...
        "Color",'black',"LineWidth",3);

    line([xB xC],[yB yC], ...
        "Color",'black',"LineWidth",3);

    scatter(xA,yA,100,'filled', ...
        'MarkerFaceColor','blue');

    scatter(xB,yB,100,'filled', ...
        'MarkerFaceColor','blue');

    scatter(xC,yC,100,'filled', ...
        'MarkerFaceColor','blue');

    pause(0.05);
end