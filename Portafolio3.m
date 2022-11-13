t = [-4:0.1:4];
O = zeros(size(t)); %vector origen o de ceros
%% coordenadas rectangulares

z = linspace(-2.5,2.5,41);
y = linspace(-4,4,41);

[y,z] = meshgrid(y,z);

x1 = real(sqrt(9-((y).^2)));
x2 = real(-sqrt(9-((y).^2)));

mesh(x1, y, z);
hold on
mesh(x2, y, z);

h=title('Grafico de cilindro circular en coordenadas rectangulares  $x^2+y^2 = 9$',...
   'interpreter','latex',...
  'FontSize',14) 
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



%% Coordenada esfericas
figure
phi = linspace(0,pi,41);
theta = linspace(0, 2*pi,41);

[phi, theta] = meshgrid(phi,theta);

rho = -3*csc(phi);

x = rho.*sin(phi).*cos(theta);
y = rho.*sin(phi).*sin(theta);
z = rho.*cos(phi);
mesh(x,y,z,'edgecolor', 'r');


h=title('Grafico de cilindro circular en coordenadas esfericas   $rho = 3csc(theta) $',...
   'interpreter','latex',...
  'FontSize',14) 
  
%h=title('Grafico de cilindro circular en coordenadas esfericas y rectangulares',...
   %'interpreter','latex',...
  %'FontSize',14) 
view(130,20)
xlabel('\fontsize{16}x')
ylabel('\fontsize{16}y')
zlabel('\fontsize{16}z')

hold on
rho2 = 3*csc(phi);

x2 = rho2.*sin(phi).*cos(theta);
y2 = rho2.*sin(phi).*sin(theta);
z2 = rho2.*cos(phi);
mesh(x2,y2,z2,'edgecolor', 'r');
