{% include mathjax.html %}

(For table of contents, visit the [homepage](/README.md))

[Previous](TISE.md)/[Next](TDSE.md)

# TISE: Particle in a Box 

The particle in a box model is used to describe the energy of a particle in certain kinetic and potential energy conditions. In a one dimensional model, the particle is trapped in a well with length, L, where the well represents the potential energy. Initially, we only looked at a well with infinite walls. However, in the future, the potential energy well can be modified to determine how the eigenvectors and eigenvalues will change if the well is not infinite or a barrier is placed in the middle of the well. 

## Potential Energy Well

The well can be defined by a certain length, L, and height at the sides. Initially can look at well with infinite walls (or as close as you can get in Matlab, $$10^6$$). This means that the observed particle must exists somewhere in the well and no where else in space. Below is an image of a well with 'infinite' walls and can be used as the potential energy matrix for the Hamiltonian operator.

![Potential well](/Potenwell_1.png)

The potential energy matrix for this well is as follows:

![potential](/potential_matrix1.png)

The potential well can also be modified so that the walls are not infinitely high or there is a bump in the middle of the well. This will change the behavior of the particle because it is no longer trapped in the box. Also if there is a bump in the middle, the particle can still occupy the entire box, however, the probability in certain areas will decrease because the particle is less likely to get over the bump in the potential energy. Below is an example of a potential well with a bump in the potential energy well.

![Potential well2](/Potenwell_2.png)

This well has the following potential energy matrix:

![potential_ma](/potential_matrix2.png)

## Physical States of Particle 

There are different physical states that you can determine about the particle in the well based on which operator you use. Such as, if you want to determine the position of the particle at the ground state, then you would use the position operator to generate the observable of the location of the particle. And you want to determine the average position of the particle when at multiple states, you can use an expectation value (average position) based upon the possible states the particle can be in. This can also be done for momentum and energy. Such as if you want to determine the energy of the particle when in the ground state, you can use the Hamiltonian operator on the wave function. Below is a picture of the first five energy states for an electron in an infinite box.

![PIB](/PIB_5st.png)

Below are the first five energy states when there is a bump in the middle of the potential well. As you can see the states that have an average energy lower than the bump height are visually disrupted, but the states higher than the energy of the bump do not appear to be disturbed. You can also add more modifications to the well and see what happens to the different states.

![PIB](/PIB.png)

## Limitations Using Time Indpendent Schrödinger

The energies of the particle in the constrained infinite region of space is quantized, and the energies and $$\psi$$ of the particle are labeled by the principle quantum number, n. Because the time independent Schrödinger is describing a specific stationary state, when the principle quantum number, n, is chosen for either the energy or $$\psi$$, then it is also chosen for the other. For example, if the energy is for n=1, then $$\psi$$ is also for n=1. This means, that only one quantum state of the particle at a time. (Above picture shows the 5 different stationary states plotted on same graph).

[Next](TDSE.md) Time Dependent Schrödinger Equation

[Code for Matlab](/TISEPIB.md)
