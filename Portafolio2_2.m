t = [-4:0.1:4];
O = zeros(size(t)); %vector origen o de ceros

%% coordenadas rectangulares
x = linspace(-4,4,50);
y = linspace(-4,4,50);

[x,y] = meshgrid(x,y);

z1 =  + real(sqrt(4 - x.^2 -y.^2));
z2 =  - real(sqrt(4 - x.^2 -y.^2));
colormap(spring)
mesh(x, y, z1);
hold on
mesh(x, y, z2);
title('Gráfico de esfera en coordenadas rectangulares x^2 + y^2 + z^2 = 4');
%title('Gráfico de esfera en coordenadas rectangulares y cilíndricas (encimadas)');

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

%% coordenada cilindricas
figure
theta = linspace(0,2*pi,41);
r = linspace(0,4,41);

[theta, r] = meshgrid(theta, r);
z1 = real(sqrt(4-r.^2));
z2 = -real(sqrt(4-r.^2));
x = r.*cos(theta);
y = r.*sin(theta);
colormap(summer)
mesh(x, y, z1);
hold on
mesh(x, y, z2);
title('Gráfico de esfera en coordenadas cilíndricas r^2 + z^2 = 4');


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

view([130, 30])


plot3(O,O,t, '--m','LineWidth',2);
txt = '\fontsize{16}\leftarrow -z';
text(0,0,t(1),txt);
txt = '\fontsize{16}\rightarrow +z';
text(0,0,t(end),txt);
