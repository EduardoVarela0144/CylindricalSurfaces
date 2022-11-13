t = [-4:0.1:4];
O = zeros(size(t)); %vector origen o de ceros
%% coordenadas rectangulares

z = linspace(-4,6,82);
y = linspace(-4,6,82);

[y,z] = meshgrid(y,z);

x1 = real(sqrt(1-(y-1).^2));
x2 = real(-sqrt(1-(y-1).^2));

mesh(x1, y, z);
hold on
mesh(x2, y, z);

%h=title('Grafico de cilindro circular en coordenadas rectangulares  $x^2+(y-1)^2 = 1$',...
  % 'interpreter','latex',...
 % 'FontSize',14) 
view(130,20)

%coloco etiquetas
xlabel('\fontsize{16}x')
ylabel('\fontsize{16}y')
zlabel('\fontsize{16}z')
h5=plot3(0,0,0,'Or'); %muestra en las coordenadas (0,0,0) un marcador en rojo
txt = '\leftarrow (0,0,0)';
text(0,0,0,txt); %muestra una leyenda o etiqueta en las coordenadas (0,0,0)
h6 =plot3(t,O,O, '--r','LineWidth',2); %%grafica el eje coordena de las x en rojo

txt = '\fontsize{16}\leftarrow -x';
text(t(1),0,0,txt);
txt = '\fontsize{16}\rightarrow +x';
text(t(end),0,0,txt);

plot3(O,t,O, '--g','LineWidth',2);
txt = '\fontsize{16}\leftarrow -y';
text(0,t(1),0,txt);
txt = '\fontsize{16}\rightarrow +y';
text(0,t(end),0,txt);



plot3(O,O,t, '--m','LineWidth',2);
txt = '\fontsize{16}\leftarrow -z';
text(0,0,t(1),txt);
txt = '\fontsize{16}\rightarrow +z';
text(0,0,t(end),txt);

%% Coordenadas cilindricas
figure
view(130,20)
%tan(theta)-4/16->0.2553
%pi-theta = 2.9
theta = linspace(0.244, 3.5 , 82);
z = linspace(-4,6,82);
[theta ,z] = meshgrid(theta,z);
 
title('Gráfico de cilindro circular en coordenadas rectangulares y cilíndricas (encimadas)');

r = 2.*sin(theta);

x = r.*cos(theta);
y = r.*sin(theta);

mesh(x, y, z)
xlabel('\fontsize{16}x')
ylabel('\fontsize{16}y')
zlabel('\fontsize{16}z')



%h=title('Grafico de cilindro circular en coordenadas cilindricas  $r = 2 sen (theta)$',...
    %'interpreter','latex',...
    %'FontSize',14) 



  


