%% coordenadas rectangulares
x = linspace(-4,4,41);
y = linspace(-4,4,41);

[x, y] = meshgrid(x,y);

z1 = real(sqrt(-x.^2 + y.^2 -1));
z2 = -real(sqrt(-x.^2 + y.^2 -1));
colormap(parula(5))

mesh(x, y, z1);
hold on
mesh(x, y, z2);

%% coordenada cilindricas
figure
theta = linspace(0,2*pi,41);
r = linspace(0,4,41);

[theta, r] = meshgrid(theta, r);
z1 = real(sqrt( (r.^2).*(-cos(theta).^2 + sin(theta).^2)-1));
z2 = -real(sqrt( (r.^2).*(-cos(theta).^2 + sin(theta).^2)-1));
x = r.*cos(theta);
y = r.*sin(theta);

mesh(x, y, z1);
hold on
mesh(x, y, z2);

