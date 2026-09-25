function T = MatrizTraslacionZ(dist)
    T = eye(4);
    T(3, 4) = dist;
end