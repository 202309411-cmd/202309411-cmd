clc;
clear;
close all;

a = input("Longitud del primer eslabon [m]: ");
b = input("Longitud del segundo eslabon [m]: ");

px = input("Posicion deseada X [m]: ");
py = input("Posicion deseada Y [m]: ");

d = sqrt(px^2 + py^2);

if d > a + b || d < abs(a - b)
    error("El punto no se puede alcanzar");
end

disp("1. Codo arriba");
disp("2. Codo abajo");
opcion = input("Selecciona una opcion: ");

valor = (px^2 + py^2 - a^2 - b^2)/(2*a*b);

if opcion == 1
    q2 = -acos(valor);
elseif opcion == 2
    q2 = acos(valor);
else
    error("Opcion incorrecta");
end

q1 = atan2(py,px) - atan2(b*sin(q2),a + b*cos(q2));

disp("Angulo 1 en radianes:");
disp(q1);

disp("Angulo 2 en radianes:");
disp(q2);

disp("Angulo 1 en grados:");
disp(q1*180/pi);

disp("Angulo 2 en grados:");
disp(q2*180/pi);

lim = a + b + 0.5;

for t = 0:0.02:1

    q1Actual = t*q1;
    q2Actual = t*q2;

   
    xA = a*cos(q1Actual);
    yA = a*sin(q1Actual);

    
    xB = xA + b*cos(q1Actual + q2Actual);
    yB = yA + b*sin(q1Actual + q2Actual);

    clf;
    hold on;
    grid on;
    axis equal;

    axis([-lim lim -lim lim]);

    xlabel("X [m]");
    ylabel("Y [m]");
    title("Robot 2R");

 
    scatter(px,py,100,'filled','MarkerFaceColor','red');

   
    line([0 xA],[0 yA],"Color",'black',"LineWidth",3);
    line([xA xB],[yA yB],"Color",'black',"LineWidth",3);

    
    scatter(0,0,100,'filled','MarkerFaceColor','blue');
    scatter(xA,yA,100,'filled','MarkerFaceColor','blue');
    scatter(xB,yB,100,'filled','MarkerFaceColor','blue');

    pause(0.05);
end