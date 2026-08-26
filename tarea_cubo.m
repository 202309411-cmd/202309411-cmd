clf;
clc;

Base1 = [0 0];
Base2 = [1 0];
Base3 = [1 1];
Base4 = [0 1];

Base5 = [0.5 0.5];
Base6 = [1.5 0.5];
Base7 = [1.5 1.5];
Base8 = [0.5 1.5];

x = [Base1(1) Base2(1) Base3(1) Base4(1) Base1(1) Base5(1) Base6(1) Base7(1) Base8(1) Base5(1) Base8(1) Base4(1) Base8(1) Base7(1) Base3(1) Base2(1) Base6(1)];
y = [Base1(2) Base2(2) Base3(2) Base4(2) Base1(2) Base5(2) Base6(2) Base7(2) Base8(2) Base5(2) Base8(2) Base4(2) Base8(2) Base7(2) Base3(2) Base2(2) Base6(2)];

 line([0 10], [0 0], 'LineWidth', 1, 'Color', 'red');
 line([0 0], [0 10], 'LineWidth', 1, 'Color', 'magenta');

Cubo2D = line(x, y);
Cubo2D.Color = 'blue';
Cubo2D.LineStyle = '-';
Cubo2D.LineWidth = 2;

axis([-1, 2.5, -1, 2.5]);   
axis square; 
grid on;