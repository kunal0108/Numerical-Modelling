% Defining the initial Vector and Angle its has to be rotated
u = [2 3]; 
theta = 30;
% Rotation Matrix
R = [cosd(theta) -sind(theta); sind(theta) cosd(theta)];
uR = R*u';

disp(['Rotated Vector = ',num2str(uR(1)),'i + ',num2str(uR(2)),'j'])