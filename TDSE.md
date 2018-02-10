{% include mathjax.html %}

(For table of contents, visit the [home page](/README.md))

[Previous](PIB.md)/Next

# The Time Dependent Schrödinger Equation (TDSE)

The time dependent Schrödinger describes all physically realizable states, and is defined by the equation:
  \begin{equation}\label{tdse}
    \mathcal{H}\Psi(x,t) = E\Psi(x,t)
\end{equation}
where $$\mathcal{H}$$ is the Hamiltonian operator formed by the sum of the kinetic and potential energy operators, and  $$\Psi(x,t)$$ is a time- and space-dependent wavefunction.

Space and time are separable in the wavefunction if and only if $$\Psi(x,t)$$ satisfies the time independent Schrödinger equation ($$\mathcal{H}$$$$\Psi$$=E$$\Psi$$). And if the variables are separatble, then $$\Psi(x,t)$$ can be rewritten as,
\begin{equation}\label{separation}
    \psi(x,t)=\Psi(x)\mathcal{T(t)}
\end{equation}
where T(t) is always equal to $$e^{-i E_n t/\hbar}$$.
Therefore, the TDSE can be written as 
  \begin{equation}
    \mathcal{H}\psi(x,t) = psi(x,t)e^{-i E_n t/\hbar}
 \end{equation}
if the variables are separable because the energy eigenfunctions are stationary.

