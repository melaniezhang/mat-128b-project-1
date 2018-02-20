function color_orbit(c)

% set ranges to our area of interest
x_min = -max(abs(c),2);
x_max = max(abs(c),2);
y_min = -max(abs(c),2);
y_max = max(abs(c),2);

% create our arrays of x & y coordinates, each with 10000 points
% x representing real axis, y representing complex
[x,y] = meshgrid(linspace(x_min,x_max,1000),linspace(y_min,y_max,1000));

% our array of complex z's to perform the iteration on
z = x + y * 1i;

num_elems = size(z);

inTol = zeros(num_elems);

orbits = zeros(num_elems);

i = 0;
while ~all(all(inTol)) && i < 300
    
    z_comp = z(~inTol);
    
    z_comp = z_comp.^2 + c;
    
    orbits(~inTol) = orbits(~inTol) + 1;
    
    z(~inTol) = z_comp;
    
    inTol(abs(z) > 100) = 1;
    
    i = i + 1;
    
end

figure
imagesc(orbits)
colormap(gray)

end