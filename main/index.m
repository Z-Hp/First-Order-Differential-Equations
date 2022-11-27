global RC
RC = 0.1;                %Constant
%% Solving first order Differential Equation with MATLAB FUNCTION ode45
%[t,y] = ode45('Function name', [time interval(i.e from 0 to 0.4)],  initial condition (i.e y(0)=2))

[t, y] = ode45('rcCircle', [0 0.4], 2);

%% Plot the solution: y(t)
plot(t, y);
grid;
xlabel('t', 'Interpreter', 'latex')
ylabel('y', 'Interpreter', 'latex')
title('$\dot{y}=-y/RC$', 'Interpreter', 'latex')