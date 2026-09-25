clf;
clc;
l1 = input("Introduce la longitud del eslabon 1 [m]: ");
teta1 = input("Introduce el angulo de la primer articulacion [rad]: ");
l2 = input("Introduce la longitud del eslabon 2 [m]: ");
teta2 = input("Introduce el angulo de la segunda articulacion [rad]: ");

ruta1_teta1 = linspace(0, teta1, 20);
ruta1_teta2 = zeros(1, 20); 

ruta2_teta1 = teta1 * ones(1, 20);
ruta2_teta2 = linspace(0, teta2, 20);

ruta_teta1 = [ruta1_teta1, ruta2_teta1];
ruta_teta2 = [ruta1_teta2, ruta2_teta2];

joint_1 = [0 0]';
pasos_totales = length(ruta_teta1); 

for i = 1:pasos_totales
    clf;
    hold on;
    grid on;
    
    axis([0 3 0 3]); 
    line([0 10], [0 0], 'Color', 'red', 'LineWidth', 3);
    line([0 0], [0 10], 'Color', 'green', 'LineWidth', 3);

    angulo_actual = ruta_teta1(i);
    angulo_actual2 = ruta_teta2(i);
    
    %GEOMETRIA
    l1x = l1 * cos(angulo_actual);
    l1y = l1 * sin(angulo_actual);
    joint_2 = [l1x, l1y]'; 
    
    l2x = l2 * cos(angulo_actual + angulo_actual2);
    l2y = l2 * sin(angulo_actual + angulo_actual2);
    
    EFx = l1x + l2x;
    EFy = l1y + l2y;
    EF = [EFx, EFy]';
    
    scatter(joint_1(1), joint_1(2), 100, 'filled', 'MarkerEdgeColor', 'blue');
    scatter(joint_2(1), joint_2(2), 100, 'filled', 'MarkerEdgeColor', 'blue');
    scatter(EF(1), EF(2), 100, 'filled', 'MarkerEdgeColor', 'blue');
    
    line([joint_1(1) joint_2(1)], [joint_1(2) joint_2(2)], "Color", "red", "LineWidth", 2, "LineStyle", "--");
    line([joint_2(1) EF(1)], [joint_2(2) EF(2)], "Color", "red", "LineWidth", 2, "LineStyle", "--");
    
    pause(0.00005); 
end