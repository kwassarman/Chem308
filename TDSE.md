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
    \psi(x,t)=\psi(x) T(t)
\end{equation}
where $$T(t)$$ is always equal to $$e^{-i E_n t/\hbar}$$.

Therefore, $$psi(x,t) can be written as 
  \begin{equation}
    \psi(x,t) = \psi(x)e^{-i E_n t/\hbar}
 \end{equation}

However, if the system is for non-stationary states, then before doing the operation with the Hamiltonian operator you need to change the basis of your wavefunction. Therefore, it is useful to use the vector form of the wavefunction and the matrix form for the Hamiltonian. In order to change from the position basis of the wavefunction to the energy basis, you need to use the inverse of the eigenvector matrix. This is shown on the next page with an application using particle in a box.

The advantage of using the TDSE is that you can see how a system changes over time. This is more realistic because systems do not exist in a static state. Such as, TDSE can be used to model the molecular orbitals of an H_2 molecule that is a combination of the atomic orbitals of each hydrogen.

[Next](PIB_TDSE.md) (Particle in a Box TDSE)
