function[] = robot() n = 8;
r = 50;
theta_0 = pi / 2;

angle = -3 * pi / 4;

for
  j = 0 : n - 1 x_0 = r * cos(angle + (angle * j));
y_0 = r * sin(angle + (angle * j));

X0 = [ x_0, y_0, theta_0 ];
[ t, y ] = ode45(@def_robot, [0 20], X0);
xp = y( :, 1);
yp = y( :, 2);
hold on plot(xp, yp);

hold on

    end xlabel('X');
ylabel('Y');
hold off end
