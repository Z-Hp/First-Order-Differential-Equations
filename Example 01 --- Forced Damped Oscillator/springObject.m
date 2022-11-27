%damped-spring-object system

function xdot=springObject(t, x)
global m k b f
w02 = k/m
beta = b/(2*m)
A = [0 1; -w02 -2*beta]
B = [0; 1/m]
xdot = A*x + B*f
