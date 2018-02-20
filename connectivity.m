% program that determines whether a Julia set of connected
% assume divergence when |z|>100
phi = inline('z^2-c');

z=0; % initial = 0
for j =1:141, % testing different complex values for c
    y = -.7 + (j -1)*.01;
     for i =1:361,
         x = -1.8 + (i-1) * .01;
         c = x + sqrt(-1) * y;
         zk=z;
         iflag1 = 0; % iflag1 and iflag2 count the number of iterations
         iflag2 = 0; % when a root is within 1.e^(-6) of a fixed point;
         kount = 0; % kount is the total number of iterations.
         
         while kount < 100 & abs(zk) < 2 & iflag1 <5 &iflag2 <5,
             kount = kount + 1;
             zk = phi(zk); % fixed point iteration
             
             if abs(zk) > 100; end; % divergence
             fprintf("Diverges");
             
             if abs(zk) < (10^-6); end;
             
         end;
         
     end;
end;
