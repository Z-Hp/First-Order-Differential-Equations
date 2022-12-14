global m k b f
m = 1
b = 2
k = 5
f = 10

%% Solving two first order Differential Equation with MATLAB FUNCTION ode45
%[t,y] = ode45('Function name', [time interval(i.e from 0 to 5)],  initial condition (i.e x(0)=0, xdot(0)=0))

[t, x] = ode45('springObject', [0 5], [0 0]);

%% Plot the solution: x(t) and v(t)
plot(t, x(:,1), t, x(:,2));
grid;
xlabel('t', 'Interpreter', 'latex')
title('$m\ddot{x}+b\dot{x}+kx=f(t)$', 'Interpreter', 'latex')
legend('Displacement: x(t)', 'Velocity: v(t)')

%% Plot Phase Graph
plot(x(:,1), x(:,2));
grid;
xlabel('x', 'Interpreter', 'latex')
ylabel('$\dot{x}$', 'Interpreter', 'latex')
title('$m\ddot{x}+b\dot{x}+kx=f(t)$', 'Interpreter', 'latex')
