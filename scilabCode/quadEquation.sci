//AIM: Solve quadratic equations containing complex numbers & matrix
//multiplications
//Software version Scilab 5.5.2


clc;
clear;

//consider quadratic equation a(x^2)+(b*x)+c=0 to be solved. 

x=poly(0,"x")
disp("Solving Quadratic Equations");
disp("----------------------------");
disp(" ");
coefficients=input('Enter the coefficients(Eg: To solve c+(b*x)+a(x^2)=0, enter [c b a]):');
polynomialX=poly(coefficients,'x','coeff');//Defining the polynomial
disp(polynomialX);
//Finding roots using standard equation

root1=((-coefficients(2))+sqrt((coefficients(2)^2)-4*coefficients(1)*coefficients(3)))/(2*coefficients(3))
disp(root1,"1st root of the equation is =");
root2=((-coefficients(2))-sqrt((coefficients(2)^2)-4*coefficients(1)*coefficients(3)))/(2*coefficients(3))
disp(root2,"2nd root of the equation is");


//Finding roots using built in roots() function
rootsX=roots(polynomialX);
disp('The roots found using built in roots() function:');
disp(rootsX);
