1D TRIANGULAR QUANTUM WELL
=================

some MATLAB code to analyze an 1D triangular quantum well
tri_qw.m calculates the energy levels and the wave functions for valance or conducting band in 1 dimentional triangular quantum well.
### Explanation
A triangular quantum well with constant electric field, F, and an infinite barrier at z = 0 was considered. 
![](/examples/scheme.png)
<br />
Figure 1.Potential of a triangular quantum well with electric field F.

Schrodinger’s equation for this potential becomes:
![](/examples/equation.jpg)

A general solution for a differentiate equation x” - ax = 0 is the Airy function, therefore the solution to the Schrodinger equation is:
![](/examples/pso.png)
and energies:
![](/examples/energies.png)
where Cn is n-th zero of Airy function. Its zeros are approximately given by:
![](/examples/zeros.png)
         
### Here are some example output plots

![](/examples/IandV_vs_t.png)  
![](/examples/PCE.png)  
![](/examples/chargeStored.png)  
![](/examples/segmentFit.png)  
