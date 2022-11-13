%% Coordenadas rectangulares
%vectores de datos
x = -4:0.1:4;
y = -4:0.1:4;

[x,y] = meshgrid(x,y);

z1 = +sqrt((x.^2 + y.^2)/4);
z2 = -sqrt((x.^2 + y.^2)/4);
colormap(summer)

mesh (x , y ,z1)
hold on
mesh(x, y, z2)
view([130, 30])

%% Coordenadas cilindricas
%figure
%r = 0:.1:4; %radio del cono
r = linspace (0,3,41);
theta = linspace(0,2*pi,41);  %barrido en el plano xy

[r, theta] = meshgrid(r, theta);

x = r.*cos(theta);
y = r.*sin(theta);
z1 = sqrt (r.^2/4);
z2 = -sqrt (r.^2/4);
colormap(parula(5))
%colormap(autumn(5))
mesh(x,y,z1)
hold on
mesh(x,y,z2)
view([130, 30])
