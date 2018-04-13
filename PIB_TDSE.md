{% include mathjax.html %}

(For table of contents, visit [homepage](/README.md))

[Previous](TDSE.md)/[Next](Class_Mar1.md)

# TDSE: Particle in a Box

The general set up of PIB for The Time Dependent Schrödinger Equations is similar to that of The Time Independent Schrödinger Equation. The potential well, Hamiltonian operator, eigenvalues, and eigenvectors are the same as in the TISE PIB. However, because the TDSE evolves with time, the plot now has to be an animation to represent the progression of time. From the PIB for TISE, the wavefunction vector is defined in position space, therefore, you need to switch between the energy and position matrix through the vector of eigenvectors. The time evolution can be achieved by either using [differentials](/TDSEPIB.md) or [difference](/Class_Mar1.md). Below are examples of PIB using TDSE.

## Start with Specified State

We initially looked at the animation when a specific state was defined for n. The input of n could be a single value, which is a stationary state, or n could be multiple values, which is a non-stationary state. Below is a general output that represents the system of n=2.

![Animation](/n=2.gif)

The plot on the upper left shows the position basis of the wavefunction overtime. If it is a stationary state, then the sine function rotates around in the real and imaginary at a constant rate across the function. However, if it is a non-stationary state, then the different parts on the function rotate at different speeds. This is because at different parts of the function there are different amounts of energy. Therefore, the time dependent part ($$T=e^{-i E_n t/\hbar}$$) is changing for the different states so the position is not changing at a constant rate. The plot on the upper right shows the energy basis of the wavefunction overtime. If it is a stationary state, then there is only one "lollipop" rotating because there is only one energy present. However, if it is a non-stationary state, then there are multiple "lollipops" representing different energies rotating at different speeds. The plot on the bottom shows the probability density of position and the red star shows the expectation value (average) of position. For a stationary state, this plot will not change. However, for a non-stationary state, the probability density will change and so will the average velocity.

Below is an image of a non-stationary state where n=2,3.

![Animation](/n=2,3.gif)

## Start with Probability Density

Sometimes you want to see what will happen to a particle if you start with specific probability density. For example, if you want to start with all the probability density starting on the left side of the box. In order to do this, you begin with the wavefunciton in the position basis. The wavefunction should be a Gaussian curve because this function has the lowest uncertainty when doing the Fourier Transform between the position and momentum bases. Therefore, you want to define the wavefunction as $$\psi_x=e^{\gamma(x-a)^2}e^{-i k x}$$ because this is the equation for a Gaussian curve. From here the rest is the same as if you were starting with a specified state. Below is an image of a Gaussian curve with the same three plots as above. 

![Gaussian](/gaussian.gif)

[Next](/Class_Mar1.md) (TDSE using Difference)

[Code for Matlab](/TDSEPIB.md)
