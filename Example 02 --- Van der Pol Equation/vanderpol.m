f = @(t,y) [y(2); (1-y(1)^2)*y(2)-y(1)]       %For mu = 1
g = @(t,y) [y(2); 1000*(1-y(1)^2)*y(2)-y(1)]  %For mu = 1000
%[t, y] = ode45(f, [0 20], [2 0])
[t, y] = ode15s(g, [0 3000], [2 0])
%plot(t, y(:,1))        %y(t) Graph
plot(y(:,1), y(:,2))    %Phase Graph
xlabel('y')
ylabel('y''')
%legend('y')
%axis([0 3000 -2.5 2.5])
grid;

