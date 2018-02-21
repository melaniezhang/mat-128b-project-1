function diffBoxCount(filepath)

image=imread(filepath);
image=rgb2gray(image);
image= imcomplement(image);

[row, col]=size(image);

maxL = 100;

% container to calculate our N_r
% we will range from r = 2 to 10
Nr = zeros(1, maxL - 1);

for r=2:maxL

    % change this...
    % F = colfilt(image, [r r],'sliding', rc);
    
    mr = ceil(row./r); % median of rows
    mc = ceil(col./r); % median of columns
    
    rc = @(block_struct) max(block_struct.data(:))-min(block_struct.data(:))+ 1;
    
    F = blockproc(image,[mr,mr],rc);

    Nr(r-1) = sum(F(:));
end

r_vals = 2:maxL;

plot(log(r_vals),log(Nr));
coef = polyfit(log(r_vals), log(Nr), 1);
coef(1)


end