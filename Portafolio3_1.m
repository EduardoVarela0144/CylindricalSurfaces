t = [-4:0.1:4];
O = zeros(size(t)); %vector origen o de ceros

%% coordenadas rectangulares
x = linspace(-4,4,41);
y = linspace(-4,4,41);

[x,y] = meshgrid(x,y);

z1 = real(sqrt(x.^2/2+y.^2/2));
z2 = real(-sqrt(x.^2/2+y.^2/2));

mesh(x, y, z1);
hold on
mesh(x, y, z2);

%h=title('Grafico de cono eliptico en coordenadas rectangulares  $z =  +- (\sqrt{x^2+y^2})/2$',...
    %'interpreter','latex',...
    %'FontSize',14) 
view(130,20)

title('Gráfico de cono eliptico en coordenadas rectangulares y cilíndricas (encimadas)');
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






%% coordenadas esfericas
%figure

phi1 = 0.955317;
phi2 = 2.2;
rho = linspace(0, 7, 41);
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



%h=title('Grafico de cono eliptico en coordenadas esfericas  $theta =  arctan\sqrt{+-2}$',...
   % 'interpreter','latex',...
   % 'FontSize',14) 
%view(130,20)


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


