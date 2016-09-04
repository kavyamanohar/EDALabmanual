//3D plots
x=[-1:.1:1];//row vector of size n(x)
y=[-1:.1:1];//row vector of size n(y)
z=(x'.^2)*(y.^2);//z is a vector of size n(x) * n(y)
figure;
plot3d(x,y,z);
xlabel('x-axis');ylabel('y-axis');zlabel('Amplitude');
title('plot3d');
xs2pdf(0,'plot3d.pdf');

t=[0:0.3:2*%pi]';
figure;
z=sin(t)*cos(t');
plot3d(t,t,z);xlabel('x-axis');ylabel('y-axis');zlabel('amplitude');
title('sin cos product');
xs2pdf(1,'plot3dsin.pdf');

// Surface with a colormap
x = -1:0.1:5;
y = -1:0.1:5;
[X,Y] = meshgrid(x,y);
Z = sin(X) + cos(Y);
// Plot
figure;
xset("colormap",jetcolormap(64));
surf(X,Y,Z);
xlabel('X');ylabel('Y');zlabel('Z');
title('Sum of sine and cosine functions of X and Y')
xs2pdf(2,'surfaceplot.pdf');
