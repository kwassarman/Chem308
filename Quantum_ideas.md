{% include mathjax.html %}

[Previous](Linear_Algebra.md)/[Next](TISE.md)

# Summary of Quantum Ideas

A **wavefunction** $$(\psi)$$ is the complete description of the quantum state of a particle. Wavefunctions can be expressed as a function or matrix of state vectors. It is often easier to work with wavefunctions when expressed in a matrix of state vectors. Any physical property, called **observables**, of a particle can be extracted from the wavefunction. Observables can be determined by operating on the wave function using different operators, such as the position or energy operator. Operators are matrices that can be multiplied to the wavefunction matrix and result in a matrix of the observables.

## Position Operator $$(\hat{x})$$ and Momentum Operator $$(\hat{p})$$

When the wavefunction is expressed as a function, the position operator is 

$$\hat{x}=x,$$

and the momentum operator is

$$\hat{p}=-i\hbar\frac{\partial}{\partial x}.$$

The *Heisenburg Uncertainty Principle* says that the uncertainty of position and momentum can never both be know absolutely. This is because the functions that satisfy the position operator do not satisfy the momentum operator and vice versa. The principle says the product of uncertainty of position and momentum is greater than or equal to $$\frac{\hbar}{2}$$. 

## Kinetic Energy Operator $$(\hat{T})$$

When the wavefunction is expressed as a function, the position operator is

$$\hat{T}= -\frac{\hbar^2}{2m}\frac{\partial ^2}{\partial x^2}$$

And therefore, when a wavefunction is operated with the position operator, the equation looks like

  \begin{equation}\label{positionop}
    \mathcal{T}\psi(x)=t\psi(x)
\end{equation}

Again, because the original wavefunction needs to be retained after operating with the kinetic energy operator, the wavefunctions take one of two forms.
      1. $$Psi(x) = 
      
## Hamiltonian Operator $$(\hat{H})$$

The Hamiltonian operator gives the total energy of a system. It is the sum of the kinetic energy operator and the potential energy operator. The potential energy operator is dependent on the model that is being used (such as [particle in a box](PIB.md), particle in a ring, harmonic ocsillator, etc.). 


[Next](TISE.md) (Time Indpendent Schrödinger Equation)
