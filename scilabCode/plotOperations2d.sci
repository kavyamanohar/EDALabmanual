//2D plots
x=[-1:.1:1];
y=x.^2;
figure;
plot(x,y,'-*'); xlabel('domain');ylabel('range');
title('Square function(plot)') 
xs2pdf(0,'plotfunction.pdf')

figure;
plot2d(x,y); xlabel('domain');ylabel('range');
title('Square function(plot2d)')
xs2pdf(1,'plot2dfunction.pdf')


figure;
plot2d3(x,y);xlabel('domain');ylabel('range');
title('Square function(plot2d3)')
xs2pdf(2,'plot2d3function.pdf')
