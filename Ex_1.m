%Exercise 1
initial_ang = [1.5; 0];
tspan = [0 30];

k=0;
[t0,x0]=ode23(@(t, x) pendulum(t, x, k), tspan, initial_ang);
k=1;
[t1,x1]=ode23(@(t, x) pendulum(t, x, k), tspan, initial_ang);

figure;
plot(x0(:,1), x0(:,2), 'b', 'DisplayName', 'k = 0');
title('Angular Velocity vs Angle');
xlabel('Theta (rad)');
ylabel('Angular Velocity (rad/s)');
xlim([-2 2]);
ylim([-2 2]);
legend;
grid on;

figure;
plot(x1(:,1), x1(:,2), 'b', 'DisplayName', 'k = 1');
title('Angular Velocity vs Angle');
xlabel('Theta (rad)');
ylabel('Angular Velocity (rad/s)');
legend;
grid on;

figure;
pendulum_phase_plane(0, -pi, pi, -4, 4);

figure;
pendulum_phase_plane(1, -pi, pi, -4, 4);

function dx = pendulum(t, x, k)
    dx1 = x(2);
    dx2 = -k*x(2) - sin(x(1));
    dx = [dx1; dx2];
end

function pendulum_phase_plane(k, xmin, xmax, ymin, ymax)
    [X1, X2] = meshgrid(linspace(xmin, xmax, 1000), linspace(ymin, ymax, 1000));
    %The meshgrid function generates two 1000x1000 matrices: X1(values for the angle) and X2(values for the angular velocity). 
    % state space equations for every coordinate from above
    DX1 = X2;
    DX2 = -k * X2 - sin(X1);
    %streamline plot
    streams = streamslice(X1, X2, DX1, DX2, 1);
    set(streams, 'Color', 'b');
    hold on;
    xlabel('Theta (radians)');
    ylabel('Angular Velocity (radians/s)');
    title(['Phase Plane for k = ', num2str(k)]);
    xlim([xmin xmax]);
    ylim([ymin ymax]);
    hold off;
end

