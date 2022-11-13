%% coordenadas rectangulares
x = linspace(-4,4, 41);
y = linspace(-4,4, 41);

[x, y] = meshgrid(x,y);

z1 = real(sqrt(x.^2 + y.^2));
z2 = -real(sqrt(x.^2 + y.^2));

mesh(x, y, z1),
hold on
mesh(x, y, z2);

%% coordenadas esfericas
% rho = sqrt(x^2 + y^2 + z^2) = sqrt(4^2 + 4^2 + 6^2)=8.2462
%figure

phi1 = pi/4;
phi2 = 3*pi/4;
rho = linspace(0, 8, 41);
theta = linspace(0, 2*pi, 41);

[rho, theta] = meshgrid(rho, theta);

x1 = rho.*sin(phi1).*cos(theta);
x2 = rho.*sin(phi2).*cos(theta);

y1 = rho.*sin(phi1).*sin(theta);
y2 = rho.*sin(phi2).*sin(theta);

z1 = rho.*cos(phi1);
z2 = rho.*cos(phi2);

mesh(x1,y1, z1);
hold on
mesh(x2,y2, z2);




