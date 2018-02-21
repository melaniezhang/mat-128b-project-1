%% Question 4: Computing the Fractal dimension - Part 2

function cellCount(filepath)
% This is an implementation of the reticular cell counting method to
% compute the fractal dimension.

image=imread(filepath);
image=rgb2gray(image);
image = imcomplement(image);

[row, col] = size(image);

maxL = 100;

NL = zeros(1, maxL - 1);

for L = 2:(maxL)
    
    mr = ceil(row./L); % median of rows
    mc = ceil(col./L); % median of columns
    
    rc = @(block_struct) max(block_struct.data(:));
    
    m = blockproc(image,[mr,mr],rc);
    
    %m = colfilt(image, [L L],'distinct', rc);
    
    NL(L-1) = nnz(m);
    
end

plot(log(2:maxL), log(NL))
coef = polyfit(log(2:maxL), log(NL), 1);
coef(1)

end