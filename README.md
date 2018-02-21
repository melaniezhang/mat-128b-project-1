# MAT 128B: Project I: Using iteration methods to understand fractal geometry

Team Members: Adam, Kathlene, Melanie, Yunxuan

DUE WEDNESDAY 2/21/2018!!!

### i- An introduction to fractals

 Convince that the filled Julia set of z^2 is the unit disk
 Say on the x-y plane we have the unit disk and we have z = a + bi, x = a and y = b on the plane.
 In the iteration of z^2, if we take a <= 1 and b <= 1 then after several iterations, the points tend to converge inside the disk; if on the other hand, we have a > 1 and b > 1 then we have a and b diverging after serveral itertions. 
 So the Filled Julia set of z^2 is the unit disk.

FILE: Project1Q1.m
 
### ii- Generate and plot other examples changing the value of c in the function

 c = .36 + .1i
 c = -.123 - .745i

 when abs(z) is bigger than 2 there is no graph shown in the grid, thus we conclude that the orbit is unbounded and z0 is not in the set.

FILES: Project1Q2Part1.m Project1Q2Part2.M

### iii- Constructing the Julia Set using Inverse Iteration Method using the same value from problem2 

 c = .36 + .1i
 c = -.123 - .745i
 
### iv- Computing the Fractal dimension

FILES: fractalDimensionPart1.m fractalDimensionPart2.m

### v- Determine connectivity of the Julia Set

FILE: connectivity.m

### vi- Coloring divergent orbits 

FILE: color_orbit.m

### vii- Newton’s method in the complex plane

FILE: newtons.m

### viii- The Mandelbrot Set

FILE: mandelbrot.m
