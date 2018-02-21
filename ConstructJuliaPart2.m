%% Question 3: Alternate version that constructs the filled Julia set

% NOTE: THESE FILES GENERATE THE FILLED JULIA SET, CONSTRUCTJULIA.M CONSTRUCTS THE
% JULIA SET.


function ConstructJulia(c,iter,num_points) 
% Example of c = -.123 - .745i used in problem 2

c =-.123 -.745i;
iter = 15;%change this slightly different from rpevious example
num_points = 100;
 
r = max(abs(c),2); % radius of the circle beyond which every point diverges
% this is used for check comnvergence of .36 + .1*1i

d = linspace(-r,r,num_points);% divide the x-axis 


A = ones(num_points,1)*d+i*(ones(num_points,1)*d)'; % create the matrix A containing complex numbers 

% create the point matrix 
M = zeros(num_points,num_points); 


for m = 1:iter % Julia iteration
 M = M+(abs(A)<=r); % the map 
 A = A.*A+ones(num_points,num_points).*c; 
end; 
 
imagesc(M); 
colormap(jet); 

hold off; 
axis equal; 
axis off; 

