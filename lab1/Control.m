r=50; 
angle=-3*pi/4; 
x_0=r*cos(angle); 
y_0=r*sin(angle); 
theta_0=0; 
X0=[x_0,y_0,theta_0];

[t,y]=ode45(@def_robot,[0 20],X0);

x1=y(:,1); 
y1=y(:,2); 
plot(x1,y1);

hold on 
 
plot(x1(1),y1(1),'rx'); %plot the inital position of the robot as a red x 
hold on 
plot(x1(length(t)),y1(length(t)),'bo'); %plot the end position of robot as a blue o  
 
xlabel('X'); 
ylabel('Y'); 
 
hold off 
