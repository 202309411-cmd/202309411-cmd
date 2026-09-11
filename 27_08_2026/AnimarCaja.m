function AnimarCaja(PointMatrix, eje, theta)

pasos = 30;
ruta_theta = linspace(0, theta, pasos);

for i = 1:pasos
    clf; 
    
    Dibujaejes(10); 
  
    Dibujacaja(PointMatrix); 
    
    angulo_actual = ruta_theta(i);
    newPoint = RotarCaja(angulo_actual, PointMatrix, eje);

    Dibujacaja(newPoint);
 
    pause(0.05);
end

end