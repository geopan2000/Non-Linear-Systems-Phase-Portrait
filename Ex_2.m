%Exercise 2
init_cond = [3; 3; 3];
tspan = [0 500];
sigma_v = [1]; %simulate for various sigma
for i = 1:length(sigma_values)
    sigma = sigma_v(i); % Current value of sigma
    [t, X] = ode23(@(t, x) sys(t, x, sigma), tspan, init_cond); % Run simulation
    % Plot results
    figure;
    plot3(X(:,1), X(:,2), X(:,3));
    title(['Ex2 system with \sigma = ', num2str(sigma)]);
    xlabel('x1');
    ylabel('x2');
    zlabel('x3');
    grid on;
end
function dx = sys(t, x, sigma)
    dx = zeros(3,1);
    dx(1) = sigma * (x(2) - x(1));
    dx(2) = 28 * x(1) - x(2) - x(1) * x(3);
    dx(3) = x(1) * x(2) - (8/3) * x(3);
end