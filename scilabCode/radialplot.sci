//Radial Plot
theta=[0:%pi/100:5*%pi];
r=(2*theta);
figure;
polarplot(theta,r,[2 2]);
title('simple spiral')
xs2pdf(0,'spiral.pdf')

gamma=[0:.01:2*%pi]
a1=sin(gamma).^2;
a2=cos(gamma).^2;
figure;
polarplot(gamma,a1,[2 2]);//legend('sine square'));
polarplot(gamma,a2,style=5);
hl=legend(['sine square';'cos square']);
title('square of sine and cosine')
xs2pdf(1,'sinSquare.pdf')
