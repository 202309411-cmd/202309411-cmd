function R = MatrizRotacionZ(Theta)

R = [cos(Theta) -sin(Theta) 0 0;
     sin(Theta)  cos(Theta) 0 0;
     0           0          1 0;
     0           0          0 1];

end
