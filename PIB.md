{% include mathjax.html %}

(For table of contents, visit the [homepage](/README.md))

[Previous](TISE.md)/[Next](TDSE.md)

# Particle in a Box 

The particle in a box model is used to describe the energy of a particle in certain kinetic and potential energy conditions. In a one dimensional model, the particle is trapped in a well with length, L, where the well represents the potential energy. Initially, we only looked at a well with infinite walls. However, in the future, the potential energy well can be modified to determine how the eigenvectors and eigenvalues will change if the well is not infinite or a barrier is placed in the middle of the well. 

## Potential Energy Well

The well can be defined by a certain length, L, and height at the sides. Initially can look at well with infinite walls (or as close as you can get in Matlab, $$10^6$$). This means that the observed particle must exists somewhere in the well and no where else in space. Below is an image of a well with 'infinite' walls and can be used as the potential energy matrix for the Hamiltonian operator.

![Potential well](/Potenwell_1.png)

This is the Matlab code for making the potential well matrix as well as plotting the potential well.
```Matlab
% Creating Potential Energy Matrix
  w=3 % number of points within infinite wall
  pts=250; % number of discretized points
  Vvec=zeros(pts,1); % column vector of all zeros
  Vvec([1:w,(end-(w-1)):end])=1E6; % infinite walls at end
  V=diag(Vvec); % changes vector into matrix
% Plotting Potential Energy Matrix
  figure(1);plot(x,Vvec,'r'); % r will turn line red
```

The potential well can also be modified so that the walls are not infinitely high or there is a bump in the middle of the well. This will change the behavior of the particle because it is no longer trapped in the box. Also if there is a bump in the middle, the particle can still occupy the entire box, however, the probability in certain areas will decrease because the particle is less likely to get over the bump in the potential energy. Below is an example of a potential well with a bump in the potential energy well.

![Potential well2](/Potenwell_2.png)

This is the Matlab code for modifying the potential well matrix.
```Matlab
% Modifiying Potential Matrix
  w=3 % number of points within infinite wall
  pts=250; % number of discretized points
  Vvec=zeros(pts,1); % same as above
  Vvec([1:w,(end-(w-1)):end])=1E6; % same as above
  Vvec([120:130])=(1E6)/3; % puts a bump in the middle
  V=diag(Vvec); % same as above
```
## Physical States of Particle 

There are different physical states that you can determine about the particle in the well based on which operator you use. Such as, if you want to determine the position of the particle at the ground state, then you would use the position operator to generate the observable of the location of the particle. And you want to determine the average position of the particle when at multiple states, you can use an expectation value (average position) based upon the possible states the particle can be in. This can also be done for momentum and energy. Such as if you want to determine the energy of the particle when in the ground state, you can use the Hamiltonian operator on the wave function. Below is a picture of the first five energy states for an electron in an infinite box.

![PIB](/PIB_5st.png)

This is the Matlab code for generating and plotting the states. Also open [this](PIB5.m) in Matlab to have the full function and can change n to be the number of states that you want to look at (you will need to change the axes).
```Matlab
% First need to define constants
  hbar=1;
  m=1; % mass of electron
  l=1; % length of box 
  pts=250; % number of discretized points
  w=3; % number of points within infinite wall
  x=linspace(0,l,pts); % discretized space
  dx=x(2)-x(1);
  barht=1E6; %bar height on potential matrix
  c=-(hbar.^2)/(2.*m); % constant in kinetic energy operator
% Next can use kinetic and potential matrices already defined
  H=T+V
% Next determine eigenvectors and eigenvalues
  [vecs,vals]=eig(H); 
% Separate states by eigenvalues
  sc=-100 % scalar factor
  vecs=sc*vecs
  repvals=(ones(pts,1))*vals';
  shiftvecs=srtvecs+repvals;
% Finally plot eigenvectors for different states
  figure(1);plot(x,shiftvecs(:,1:n),x,Vvec);
  axis([-inf inf -.5 300]); % adjusts axes to be able to see eigenvectors
```
The constants are currently defined as 1 so the numbers are easier to work with because $$\hbar$$ and mass of an electron are very small numbers. Also, I orignially had the true constants in and Matlab was not able to calculate the eigenvectors and eigenvalues with enough accuracy to be able to graph the different states.

## Limitations Using Time Indpendent Schrödinger

The energies of the particle in the constrained infinite region of space is quantized, and the energies and $$\psi$$ of the particle are labeled by the principle quantum number, n. Because the time independent Schrödinger is describing a specific stationary state, when the principle quantum number, n, is chosen for either the energy or $$\psi$$, then it is also chosen for the other. For example, if the energy is for n=1, then $$\psi$$ is also for n=1. This means, that only one quantum state of the particle at a time. (Above picture shows the 5 different stationary states plotted on same graph).

[Next](TDSE.md) Time Dependent Schrödinger Equation



#### Matlab Documents

Matlab can be used to plot the wavefunctions at different energy states, ([Particle in a box](PIB5.m)). The potential well can be modified to observe how the wavefunctions react to the change. This allows you to visualize the different wavefunctions at different quantum states. 

##### Week of January 15 
[Kinetic Energy Matrix](/kinetic.m) (from 1/18)

##### Week of January 22
[Particle in a Box](PIB.m) during class (from 1/23)

[Particle in a Box](PIB2.m) edits (from 1/24)

[Particle in a Box](PIB3.m) edits (from 1/25)

[Sort Eigenvalue/Eigenvectors](eigsort.m) code to value eigenvalues in asceding order (from 1/25)
##### Week of January 29
[Particle in a Box](PIB4.m) edits (from 1/29)

[Particle in a Box](PIB5.m) edits that have constants equal to 1 so the wavefunctions are separated by the values of the eigenvalues (from 1/30)
