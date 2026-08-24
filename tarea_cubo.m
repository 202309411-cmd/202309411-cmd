clf;
clc;
Base1 = [0 0 0];  
Base2 = [1 0 0]; 
Base3 = [1 1 0]; 
Base4 = [0 1 0]; 
Base5 = [0 0 1]; 
Base6 = [1 0 1]; 
Base7 = [1 1 1]; 
Base8 = [0 1 1]; 
x = [Base1(1) Base2(1) Base3(1) Base4(1) Base1(1) Base5(1) Base6(1) Base7(1) Base8(1) Base5(1) Base8(1) Base4(1) Base8(1) Base7(1) Base3(1) Base2(1) Base6(1)];
y = [Base1(2) Base2(2) Base3(2) Base4(2) Base1(2) Base5(2) Base6(2) Base7(2) Base8(2) Base5(2) Base8(2) Base4(2) Base8(2) Base7(2) Base3(2) Base2(2) Base6(2)];
z = [Base1(3) Base2(3) Base3(3) Base4(3) Base1(3) Base5(3) Base6(3) Base7(3) Base8(3) Base5(3) Base8(3) Base4(3) Base8(3) Base7(3) Base3(3) Base2(3) Base6(3)];
 line([0 10], [0 0], 'LineWidth', 1, 'Color', 'red');    
 line([0 0], [0 10], 'LineWidth', 1, 'Color', 'magenta');
 line([0 0], [0 0], [0 10], 'LineWidth', 1, 'Color', 'yellow');

Cubo = line(x,y,z);
Cubo.Color = 'blue';
Cubo.LineStyle = '--'; 
Cubo.LineWidth = 2;
axis([-1,2,-1,2,-1,2]); 
axis square; 
grid on 
view(3);