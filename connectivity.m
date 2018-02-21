function connectivity(c)
% program that determines whether a Julia set of connected
% assume divergence when |z|>100
z=0; % initial = 0
zk=z;

iflag1 = 0; % iflag1 and iflag2 count the number of iterations
kount = 0; % kount is the total number of iterations.
while kount < 100 && iflag1
    kount = kount + 1;
    zk = zk.^2+c; % fixed point iteration
    if abs(zk) > 100
        fprintf('\norb(0) for Julia set c=%f%+fi diverges\n Therefore the set is disconnected\n\n', real(c), imag(c));
        iflag1 = 0;
    end % divergence
end
       
if (iflag1)
    fprintf('\norb(0) does not diverge for Julia set C= %f%f+i\nTherefore the set is connected\n\n', real(c), imag(c));
end

end


