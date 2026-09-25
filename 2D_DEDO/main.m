clear all
close all
clc

[L1,L2,L3] = Leerdimensiones();

[Theta1f,Theta2f,Theta3f] = Leerangulos();

fprintf("L1: %f m | L2: %f m | L3: %f m\n",L1,L2,L3);
fprintf("Theta1: %f rad | Theta2: %f rad | Theta3: %f rad\n",Theta1f,Theta2f,Theta3f);

LongitudTotal = L1 + L2 + L3;

figure

Pasos = 50;

for i = 1:Pasos

 
    Theta1 = Theta1f*(i/Pasos);
    Theta2 = Theta2f*(i/Pasos);
    Theta3 = Theta3f*(i/Pasos);

 
    PointMatrix = Calculapuntos(L1,L2,L3,Theta1,Theta2,Theta3);

    cla;

    Dibujaejes(LongitudTotal);

    Dibujadedo(PointMatrix);

    xlim([-LongitudTotal LongitudTotal]);
    ylim([-LongitudTotal LongitudTotal]);

    pause(0.1);

end