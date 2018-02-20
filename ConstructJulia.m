function ConstructJulia(c,num_points)
pick = round(rand);
if pick
    julia_set = 0.5*(1 + sqrt(1-4*c));
else
    julia_set = 0.5*(1 - sqrt(1-4*c));
end
for k = 1:num_points
    pick = round(rand);
    if pick
        next = sqrt(julia_set(end) - c); 
    else
        next = -sqrt(julia_set(end) - c);
    end
    julia_set = [julia_set; next];
end

figure
plot(julia_set, '.')

end