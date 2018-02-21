%% Question 8: The Mandelbrot Set

function m_set = mandelbrot()
% Generates elements of the mandelbrot set, spaced across 1000*1000
% elements ranging from from -2-1i to 1+1i
% Also plots these elements, colored according to number of iterations
% until "divergence" (|z| > 2)

% set ranges to our area of interest
x_min = -2;
x_max = 1;
y_min = -1;
y_max = 1;

% create our arrays of x & y coordinates, each with 1000 points
% x representing real axis, y representing complex
[x,y] = meshgrid(linspace(x_min,x_max,1000),linspace(y_min,y_max,1000));

% our array of complex c's to perform the iteration on
c = x + y * 1i;

num_elems = size(c);

% mandelbrot set has z_0 = 0, so initialize all z values to zero.
z = zeros(num_elems);

% this will hold the number of iterations until divergence
% (i.e. until absolute value of z > 2)
divergences = zeros(num_elems);

% perform (20) fixed point iterations with every c value
for j = 1:20
    z = z.^2 + c;  % the mandelbrot iteration formula
    ny_div = divergences == 0;  % so we don't keep re-filling the already
                                % diverged c values
    diverged = abs(z) > 2;      % our divergence criteria
    divergences(ny_div & diverged) = j;  % update the number of iterations
                                         % for the diverged c values
end

% all c values that did not diverge are the mandelbrot set!
m_set = c(~divergences);

% plot the c's, coloring according to the divergence rates
figure
imagesc(divergences)
colormap hot
