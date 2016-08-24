//AIM:Plot the diode characteristics when forward biased

clear;
clc;

Vd=[0:0.1:.7,.71:.02:1]//diode voltage
Is=10^(-15)//assume reverse biased saturation current
n=1//Emission coefficient
Temp=32//temperature in degrees
T=Temp+273//temperature in Kelvin
k=1.38*10^(-23)//Boltzmann's Constant
q=1.6*10^(-19)//Charge of electron
Vt=(k*T)/q//thermal voltage
Id=Is*(exp(Vd/(n*Vt))-1)//Diode current
figure;
plot(Vd,Id,'*-b')
xlabel("Vd in volts")
ylabel("Id in mA")
title("Characteristic of diode when forward biased")
xs2pdf(0,'diodeFBchar.pdf');
