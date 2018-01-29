{% include mathjax.html %}

(For table of contents, visit the [home page](/README.md))

# Particle in a Box

The equation that describes quantum mechanics of particles in well defined energy states can be determined by the time independent Schrödinger Equation
  \begin{equation}\label{tise}
    \mathcal{H}\psi(x)=E\psi(x)
\end{equation}
where $$\mathcal{H}$$ is the Hamiltonian operator that is the sum of the kinetic and potential energy operators, and $$\Psi(x)$$ is the time independent wavefunction.

Matlab can be used to plot the wavefunctions at different energy states, ([Particle in a box](1D_PIB.m)). The potential well can be modified to observe how the wavefunctions react to the change. In order for the code to work, the eigenvalues and eigenvectors need to be sorted, [here](eigsort.m).

## Progress of Matlab Code

### Week of January 15 
[Kinetic Energy Matrix](/kinetic.m) (from 1/18)
### Week of January 22
[Particle in a Box](PIB.m) during class (from 1/23)

[Particle in a Box](PIB2.m) edits (from 1/24)

[Particle in a Box](PIB3.m) edits (from 1/25)

[Sort Eigenvalue/Eigenvectors](eigsort.m) code to value eigenvalues in asceding order (from 1/25)
