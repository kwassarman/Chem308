{% include mathjax.html %}

(For table of contents, visit the [homepage](/README.md))

[Previous](PIB.md)/[Next](PIB_TDSE.md)

# The Time Dependent Schrödinger Equation (TDSE)

The time dependent Schrödinger describes all physically realizable states, and is defined by the equation:
  \begin{equation}\label{tdse}
    \hat{H}\psi(x,t) = E\psi(x,t)
\end{equation}
where $$\hat{H}$$ is the Hamiltonian operator formed by the sum of the kinetic and potential energy operators, and  $$\psi(x,t)$$ is a time- and space-dependent wavefunction.

Space and time are separable in the wavefunction if and only if $$\psi(x,t)$$ satisfies the time independent Schrödinger equation, which means the solutions are stationary states. And if the variables are separable, then $$\psi(x,t)$$ can be rewritten as,
\begin{equation}\label{separation}
    \psi(x,t)=\psi(x)\T(t)
\end{equation}
where $$T(t)$$ is always equal to $$e^{-i E_n t/\hbar}$$.

Therefore, the TDSE can be written as 
  \begin{equation}
    \hat{H}\psi(x,t) = psi(x,t)e^{-i E_n t/\hbar}
 \end{equation}

However, if the system is for non-stationary states, then before doing the operation with the Hamiltonian operator you need to change the basis of your wavefunction.

## Matlab
Matlab can be used to plot the wavefunctions that are dependent on both position and time. Three plots are showed:

  1. Wavefunciton in position basis over time in real and imaginary
    
  2. Wavefunction in energy basis over time in real and imaginary
    
  3. Probability density of position in real and shows expectation value and average energy.
    
Multiple states can be looked at together.
[Time Independent Schrödinger Equation](TDSEa2.m)

[Next](PIB_TDSE.md) (Particle in a Box TDSE)
