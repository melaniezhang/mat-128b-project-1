phi = inline('z^2-1.25');
fixpt1 = (1+sqrt(6))/2; %those are two fixed points
fixpt2 = (1-sqrt(6))/2;

colormap([1 0 0; 1 1 1]);

M = 2* ones(141, 361); % Initialize array of point colours to 2
 
for j =1:141,
    y = -.7 + (j -1)*.01;
     for i =1:361,
         x = -1.8 + (i-1) * .01;
         z = x + sqrt(-1) * y;
         zk =z;
         iflag1 = 0; % iflag1 and iflag2 count the number of iterations
         iflag2 = 0; % when a root is within 1.e^(-6) of a fixed point;
         kount = 0; % kount is the total number of iterations.
         
         while kount < 100 & abs(zk) < 2 & iflag1 <5 &iflag2 <5,
             kount = kount + 1;
             zk = phi(zk); % fixed point iteration
             
             err1 = abs(zk - fixpt1); %check the convergence of the fist fixed point
             if err1 < 1.e-6, iflag1 = ifalg1 + 1; else, iflag1 = 0; end;
             
             err2 = abs(zk - fixpt2); %check the convergence of the second fixed point
             if err2 < 1.e-6, iflag2 = iflag2 + 1; ;else, iflag2 = 0; end;
             
         end;
         
         if iflag1 >= 5| iflag2 >= 5| kount >= 100,
             M(j,i) = 1;
         end;
     end;
end;

image([-1.8 1.8], [-.7 .7], M),
axis xy
         