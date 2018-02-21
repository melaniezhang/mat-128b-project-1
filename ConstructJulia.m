function ConstructJulia(c,num_points, iterations)

% final julia set
julia_set = zeros(num_points,iterations);

% num_points random starting points
z = (rand(num_points,1)*2-1) + (rand(num_points,1)*2-1)*1i;

% Iterate 15 times to remove non boundary points
for k = 1:15
   z = sqrt(z - c);
end

for k = 1:iterations
    z = sqrt(z - c);
    idx = rand(num_points,1)>0.5;
    z(idx) = -z(idx);
    julia_set(:,k) = z;
end

figure
plot(julia_set, 'k.')
ax = gca;
ax.Visible = 'off';

print(gcf,'-dpng');

end