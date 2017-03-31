1D TRIANGULAR QUANTUM WELL
=================

Some MATLAB code to analyze an 1D triangular quantum well. <br />
**tri_qw.m** calculates the energy levels and the wave functions for valance or conduction band in 1 dimensional triangular quantum well.
### Explanation
A triangular quantum well with constant electric field *F* and an infinite barrier at x = 0 was considered. 
![](/examples/scheme.png)
<br />
**Figure 1.** *Potential of a triangular quantum well with electric field F.*

Schrodinger’s equation for this potential becomes:
![](/examples/equation.jpg)

A general solution for a differential equation x” - ax = 0 is the Airy function, therefore the solution to the Schrodinger equation is: <br />

![](/examples/psi.jpg)
<br />
and energies: <br />
![](/examples/energies.png) <br />
where Cn is n-th zero of Airy function. Its zeros are approximately given by:<br />
![](/examples/zeros.jpg)
         
### Here are some example output plots

![](/examples/studnia_5MV.png)  
![](/examples/studnia_lh_12MV.png)  
  
