function T = MatrizTraslacionX(dist)
    T = eye(4);
    T(1, 4) = dist;
end