function NewJulia(z, c, iter, num_points)

c = 0.4 + 0.3i; %give the constant used
iter = 10000; %number of iterations
num_points = 500;
z = .1 +.5i; %give the initial value



for m = 1: iter,
    invPoints = (z - c )^.5; %IIM
     
    L(m) = invPoints;
    x(m) = real(L(m));
    y(m) = imag(L(m));
    
    z = invPoints;
    
end;

plot(real(L),imag(L),'*') %plotting the points
colormap(spring); 

hold off; 
axis equal; 
axis off; 



