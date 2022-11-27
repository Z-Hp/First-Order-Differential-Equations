function ydot=rcCircle(t, y) %Function-name: rcCircle
global RC                    %Constant (i.e. RC = 0.1)
ydot = (-y)/(RC)             %First-order Differential Equation: dy/dt = (-y)/(RC)