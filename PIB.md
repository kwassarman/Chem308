{% include mathjax.html %}

(For table of contents, visit the [homepage](/README.md))

[Previous](TISE.md)/[Next](TDSE.md)

# Particle in a Box 

The particle in a box model is used to describe the energy of a particle in certain kinetic and potential energy conditions. In a one dimensional model, the particle is trapped in a well with length, L, where the well represents the potential energy. Initially, we only looked at a well with infinite walls. However, in the future, the potential energy well can be modified to determine how the eigenvectors and eigenvalues will change if the well is not infinite or a barrier is placed in the middle of the well. 

## Potential Energy Well

The well can be defined by a certain length, L, and height at the sides. Initially can look at well with infinite walls (or as close as you can get in Matlab, $$10^6$$). This means that the observed particle must exists somewhere in the well and no where else in space. 

## Physical States of Particle 

There are different physical states that you can determine about the particle in the well based on which operator you use. Such as, if you want to determine the position of the particle at the ground state, then you would use the position operator to generate the observable of the location of the particle. And you want to determine the average position of the particle when at multiple states, you can use an expectation value (average position) based upon the possible states the particle can be in. This can also be done for momentum and energy. Such as if you want to determine the energy of the particle when in the ground state, you can use the Hamiltonian operator on the wave function. Below is a picture of the first five energy states for an electron in an infinite box.

<p align="center">
  <img src="https://github.com/kwassarman/Chem308/blob/master/_includes/PIB.jpg" width="500">

## Limitations Using Time Indpendent Schrödinger

The energies of the particle in the constrained infinite region of space is quantized, and the energies and $$\Psi$$ of the particle are labeled by the principle quantum number, n. Because the time independent Schrödinger is describing a specific stationary state, when the principle quantum number, n, is chosen for either the energy or $$\Psi$$, then it is also chosen for the other. For example, if the energy is for n=1, then $$\Psi$$ is also for n=1. This means, that only one quantum state of the particle at a time. (Above picture shows the 5 different stationary states plotted on same graph).

## Matlab

Matlab can be used to plot the wavefunctions at different energy states, ([Particle in a box](PIB5.m)). The potential well can be modified to observe how the wavefunctions react to the change. This allows you to visualize the different wavefunctions at different quantum states. 

### Progress of Matlab Code

#### Week of January 15 
[Kinetic Energy Matrix](/kinetic.m) (from 1/18)
#### Week of January 22
[Particle in a Box](PIB.m) during class (from 1/23)

[Particle in a Box](PIB2.m) edits (from 1/24)

[Particle in a Box](PIB3.m) edits (from 1/25)

[Sort Eigenvalue/Eigenvectors](eigsort.m) code to value eigenvalues in asceding order (from 1/25)
#### Week of January 29
[Particle in a Box](PIB4.m) edits (from 1/29)

[Particle in a Box](PIB5.m) edits that have constants equal to 1 so the wavefunctions are separated by the values of the eigenvalues (from 1/30)

[Next](TDSE.md) Time Dependent Schrödinger Equation
