function Dibujaejes(AxisLength)
%DIBUJAEJES Summary of this function goes here
%   Detailed explanation goes here
Delta = [-AxisLength AxisLength];
line(Delta, [0 0], [0 0], LineWidth=2,Color='red');
line([0 0], Delta, [0 0], LineWidth=2,Color='green');
line([0 0], [0 0], Delta, LineWidth=2,Color='blue');

view (45, 30)
axis equal;
end