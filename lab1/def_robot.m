function xdot=def_robot(t,x)    % would've preferred to not use a global variable
global final_heading;           % but not sure how I can pass the variable into the function
%Initialize the state vector
xdot = zeros(3,1);
%Defining parameters
k_p=3;
k_alpha=8;
k_beta=-1.5;
x_f=0;
y_f=0;
theta_f=final_heading; % final heading direction
rho=sqrt((x_f-x(1))^2+(y_f-x(2))^2);
alpha=-x(3)+atan2((y_f-x(2)),(x_f-x(1)));
beta=theta_f-x(3)-alpha;
%Control input
v=k_p*rho;
omega=k_alpha*alpha+k_beta*beta;
%Defining the differential equations
xdot(1)=cos(x(3))*v;
xdot(2)=sin(x(3))*v;
xdot(3)=omega;
end