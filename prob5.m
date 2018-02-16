% Project 1 #5 part 1:
% Uses differential box counting method to compute the fractal dimension
% of an image
% The image used here is a filled-in disk.
% doesn't work yet :(

image=imread('blackcircle.png');
image=rgb2gray(image);

[M,N]= size(image);

% container to calculate our N_r
% we will range from r = 2 to 10
Nr = zeros(1,9);

for r=2:10
rc = @(x) (max(x)-min(x))/r + 1;          % n(i,j) = l - k + 1
                                          % l -> max gray level
                                          % k -> min gray level
F = colfilt(image, [r r],'sliding', rc);  % apply to grids over entire image
Nr(r-1) = sum(F(:));
end

rec = @(x) x^2/(M*N);  % to plot our 1/r values
r_vals = arrayfun(rec, 2:10);

plot(log(Nr),log(r_vals));
coef = polyfit(log(Nr), log(r_vals), 1);
coef(1)
