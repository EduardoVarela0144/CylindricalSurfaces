%% Coordenadas rectangulares
%vectores de datos
y = -4:0.1:4;
z = -4:0.1:4;

[y,z] = meshgrid(y,z);

x = y.^2;
colormap(summer)
mesh (x , y ,z)
hold on
view([130, 30])

%% Coordenadas cilindricas
figure
%tan(theta)-4/16->0.2553
%pi-theta = 2.9
theta = linspace(0.244, 2.9 , 82);
z = linspace(-4,4,82);
[theta ,z] = meshgrid(theta,z);

r = cot(theta).*csc(theta);

x = r.*cos(theta);
y = r.*sin(theta);

mesh(x, y, z)





