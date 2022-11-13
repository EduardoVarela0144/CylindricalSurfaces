t = [-4:0.1:4];
O = zeros(size(t)); %vector origen o de ceros

%% coordenadas rectangulares
x = linspace(-4,4,50);
y = linspace(-4,4,50);

[x,y] = meshgrid(x,y);

z1 = real(sqrt(9/4 - x.^2 -y.^2)+3/2);
z2 = real(-sqrt(9/4 - x.^2 -y.^2)+3/2);

mesh(x, y, z1);
hold on
mesh(x, y, z2);

%h=title('Grafico de elipsoide en coordenadas rectangulares  $z =  +- \sqrt{9/4-x^2-y^2}+3/2$',...
    %'interpreter','latex',...
    %'FontSize',14) 
view(130,20)

title('Gráfico de elipsoide en coordenadas rectangulares y cilíndricas (encimadas)');
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
%figure

r = linspace (0,3,41);
theta = linspace(0,2*pi,41);  %barrido en el plano xy

[r, theta] = meshgrid(r, theta);

x = r.*cos(theta);
y = r.*sin(theta);
z1 = real(3/2+sqrt (9/4-r.^2));
z2 = real(3/2-sqrt (9/4-r.^2));


mesh(x,y,z1)
hold on
mesh(x,y,z2)
view([130, 30])

%h=title('Grafico de elipsoide en coordenadas cilindricas  $z = 3/2 +- \sqrt{9/4-r^2}$',...
   % 'interpreter','latex',...
    %'FontSize',14) 
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

view([130, 30])


plot3(O,O,t, '--m','LineWidth',2);
txt = '\fontsize{16}\leftarrow -z';
text(0,0,t(1),txt);
txt = '\fontsize{16}\rightarrow +z';
text(0,0,t(end),txt);


