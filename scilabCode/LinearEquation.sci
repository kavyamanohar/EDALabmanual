//Solving Linear equations in two variables
//let two equations be
//1: a1.x+b1.y=c1
//2: a2.x+b2.y=c2

clc;
clear;
disp("Solving Linear Equations in two variables ");
disp("-------------------------------------------");
disp(" ");
coeff_list1=input('Enter the coefficients of first equation(Enter a1.x+b1.y=c1 as [a1 b1 -c1]:')
coeff_list2=input('Enter the coefficients of second equation(Enter a2.x+b2.y=c2 as [a2 b2 -c2]:')
variable_coeff=[coeff_list1(1:2);coeff_list2(1:2)];//Coefficient of variables
const_terms=[coeff_list1(3);coeff_list2(3)];//Constant term
solution=linsolve(variable_coeff,const_terms);
mprintf("The solutions are x=%0.3f and y=%0.3f",solution(1),solution(2));
