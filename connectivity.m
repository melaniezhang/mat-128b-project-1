% program that determines whether a Julia set of connected
% assume divergence when |z|>100
phi = inline('z^2-c');

z=0; % initial = 0
zk=z;
iflag1 = 0; % iflag1 and iflag2 count the number of iterations
iflag2 = 0; % when a root is within 1.e^(-6) of a fixed point;
kount = 0; % kount is the total number of iterations.
while kount < 100,
    kount = kount + 1;
    zk = phi(zk); % fixed point iteration
    if abs(zk) > 100, fprintf("Julia set with complex number %s and starting value of 0 diverges.\n",c), end; % divergence
    if abs(zk) < (10^-6), end;
end;
         
  
