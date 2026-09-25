function R = MatrizRotacionX(ang)
    R = [1, 0,        0,         0;
         0, cos(ang), -sin(ang), 0;
         0, sin(ang),  cos(ang), 0;
         0, 0,        0,         1];
end 