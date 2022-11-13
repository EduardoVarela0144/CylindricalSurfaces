%% coordenadas rectangulares
x = linspace(-4,4,50);
y = linspace(-4,4,50);

[x,y] = meshgrid(x,y);

z1 = 2 + real(sqrt(4 - x.^2 -y.^2));
z2 = 2 - real(sqrt(4 - x.^2 -y.^2));

mesh(x, y, z1);
hold on
mesh(x, y, z2);


%% Coordenada esfericas
figure
phi = linspace(0,pi,50);
theta = linspace(0, 2*pi,50);

[phi, theta] = meshgrid(phi,theta);

rho = 4.*cos(phi);

x = rho.*sin(phi).*cos(theta);
y = rho.*sin(phi).*sin(theta);
z = rho.*cos(phi);

mesh(x,y,z);



