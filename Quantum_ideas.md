{% include mathjax.html %}

(For table of contents, visit the [home page](/README.md))

([Next](TISE.md))

# Summary of Quantum Ideas

A *wavefunction* ($$psi$$) is the complete description of the quantum state of a particle. Wavefunctions can be expressed as a function or matrix of state vectors. It is often easier to work with wavefunctions when expressed in a matrix of state vectors. Any physical property, called *observables*, of a particle can be extracted from the wavefunction. Observables can be determined by operating on the wave function using different operators, such as the position or energy operator. Operators are matrices that can be multiplied to the wavefunction matrix and result in a matrix of the observables.

## Position Operator (X)

When the wavefunction is expressed as a function, the position operator is 
  \begin{equation}\label{position}
    \mathcal{X}=x
\end{equation}
And therefore, when a wavefunction is operated with the position operator, the equation looks like
  \begin{equation}\label{positionop}
    \mathcal{X}\psi(x)=x\psi(x)
\end{equation}
Because the original wavefunction needs to be retained after operating, the function for the wavefunction are 

## Kinetic Energy Operator (T)

When the wavefunction is expressed as a function, the position operator is 
  \begin{equation}\label{position}
    \mathcal{T}\Psi(x) = -\frac{\hbar^2}{2m}\frac{\partial ^2}{\partial x^2}
\end{equation}
And therefore, when a wavefunction is operated with the position operator, the equation looks like
  \begin{equation}\label{positionop}
    \mathcal{T}\psi(x)=t\psi(x)
\end{equation}
Again, because the original wavefunction needs to be retained after operating with the kinetic energy operator, the wavefunctions take one of two forms.
      1. $$Psi(x) = 
      
## Hamiltonian Operator (H)

The Hamiltonian operator gives the total energy of a system. It is the sum of the kinetic energy operator and the potential energy operator. The potential energy operator is dependent on the model that is being used (such as [particle in a box](PIB.md), particle in a ring, harmonic ocsillator, etc.). 


[Next](TISE.md) (Time Indpendent Schrödinger Equation)
