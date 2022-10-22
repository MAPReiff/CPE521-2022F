function [] = robot()
    %Initial all paramaters
    n=8; %Number of runs
    r=50; % Radius
    theta_0=pi/3;

    angle=-3*pi/4;

    for j = 0:n-1
        %Calculate the x and y start positions

        x_0=r*cospi(angle + (angle*j)/n);
        y_0=r*sinpi(angle + (angle*j)/n);

        X0=[x_0,y_0,theta_0];

        [t,y]=ode45(@def_robot,[0 20],X0);

        %Assign the x and y values
        x = y(:,1);
        yy = y(:,2);

        %Plot the line
        hold on
        plot(x,yy);

        %Plot dots to mark the end of the line with `k.`
        plot(x(1),yy(1),'k.');
        hold on
    end

    %Lable the x axis and y axis
    xlabel('X');
    ylabel('Y');
    title(string(n) + ' iteration(s)');
    %hold off the hold ons
    hold off
end
