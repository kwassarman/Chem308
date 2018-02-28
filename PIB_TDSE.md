{% include mathjax.html %}

(For table of contents, visit [homepage](/README.md))

[Previous](TDSE.md)

# Particle in a Box TDSE

The general set up of PIB for The Time Dependent Schrödinger Equations is similar to that of The Time Independent Schrödinger Equation. The potential well, Hamiltonian operator, eigenvalues, and eigenvectors are the same as in the TISE PIB. However, because the TDSE evolves with time, the plot now has to be an animation to represent the progression of time. 

From the PIB for TISE, the wavefunction vector is defined in position space. In order to switch between the position and energy bases, the following Matlab code can be used:
```Matlab
EtoX=vecs; 
XtoE=inv(vecs);
```
Therefore, in order to get into the energy basis, you can multiply EtoX by the vector of a specific state you want in the energy basis. For example, if you want the second state in the energy basis, you can use the following vector $$\psi_E=\begin{pmatrix} 0\\1\\0\\ \vdots \\ 0 \end{pmatrix}. The following is the Matlab code that can be used to get the vector of the wanted $$\psi_E$$:
```Matlab
psiE=zeros(pts,1); 
psiE([n])=1;
```

## Start with Specified State

We initially looked at the animation when a specific state was defined for n. The input of n could be a single value, which is a stationary state, or n could be multiple values, which is a non-stationary state. Below is a general output that represents the system of n=2 (if you want to see animation [open](TDSE2.md) in Matlab).

![]()

The plot on the upper left shows the position basis of the wavefunction overtime. If it is a stationary state, then the sine function rotates around in the real and imaginary at a constant rate across the function. However, if it is a non-stationary state, then the different parts on the function rotate at different speeds. This is because at different parts of the function there are different amounts of energy. Therefore, the time dependent part ($$T=e^{-i E_n t/\hbar}$$) is changing for the different states so the position is not changing at a constant rate. The plot on the upper right shows the energy basis of the wavefunction overtime. If it is a stationary state, then there is only one "lollipop" rotating because there is only one energy present. However, if it is a non-stationary state, then there are multiple "lollipops" representing different energies rotating at different speeds. The plot on the bottom shows the probability density of position and the red star shows the expectation value (average) of position. For a stationary state, this plot will not change. However, for a non-stationary state, the probability density will change and so will the average velocity.

## Start with Probability Density

Sometimes you want to see what will happen to a particle if you start with specific probability density. For example, if you want to start with all the probability density starting on the left side of the box. 

[Homepage](/README.md)
