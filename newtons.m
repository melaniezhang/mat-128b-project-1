%% Question 7: Newton's method in the complex plane

function newtons(f)
% Takes in a symbolic function as input, and performs Newton's
% method on it. Prints out color map of how many iterations each initial z
% took to converge.

phi = matlabFunction(f);
dphi = matlabFunction(diff(f));

% set ranges to our area of interest
x_min = -1;
x_max = 1;
y_min = -1;
y_max = 1;

% create our arrays of x & y coordinates, each with 1000 points
% x representing real axis, y representing complex
[x,y] = meshgrid(linspace(x_min,x_max,1000),linspace(y_min,y_max,1000));

% our array of complex z's to perform the iteration on
z = x + y * 1i;

num_elems = size(z);

inTol = zeros(num_elems);

s = zeros(num_elems);

i = 0;
while ~all(all(inTol)) && i < 200
    
    z_comp = z(~inTol);
    
    % primary newtons method iteration
    z_comp = z_comp - phi(z_comp)./dphi(z_comp);
    
    s(~inTol) = s(~inTol) + 1;
    
    z(~inTol) = z_comp;
    
    inTol(abs(phi(z)) < 10^(-6)) = 1;
    
    i = i + 1;
end

figure
imagesc(s)
colormap(parula)

end