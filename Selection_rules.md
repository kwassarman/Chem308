{% include mathjax.html %}

(For table of contents, visit [homepage](/README.md))

[Previous](/HO.md)/[Next](/fourier_transform.md)

# Selection Rules

Only certain transitions between states are allowed because energy and momentum need to conserved. On this page the selection rules for vibrational transitions are explored. The basis for the transition between vibrational states has to do with an oscillating dipole moment. The rule states that the vibration must change the molecular dipole moment to have a non-zero (electric) transition dipole moment. However, you might be asking yourself what is a transition dipole moment? 

## Transition Dipole Moment

A transition dipole moment is created when two atomic orbitals are combined and result in a dipole. This is best seen with examples that show when there is a transition dipole moment and when when there is not a transition dipole moment. Below shows a transition dipole moment when a 1s orbital and a 2p orbital are overlapped. The p-orbital changes phases at a faster rate than the s-orbital. Therefore, the destructive and constructive interference between the orbitals creates a distored looking p-orbital. As you can see as time progresses, the lobe sizes on the right and left change. This shows that there is a dipole moment when transitioning between these orbitals. Therefore, a transition between these orbitals is allowed.

![transitiondipole](/transitiondipole1.gif)

To more fully understand, below shows two orbitals that do not have a transition dipole moment. It is the transition from a 1s orbital to a 3d orbital. Again, the phases of the d-orbital are changing faster than the s-orbital, so the lobe sizes are still changing. However, the distored d-orbital of the combination between the orbitals still do not have dipoles. Thus, there is no dipole moment, so there is no transition dipole. Therefore, the transition between these orbitals is not allowed.

![nodipole](/nodipole.gif)

## Exploring Different Selection Rules for HO Models

The above exercise can be done for every transition possible, or you can use Matlab to determine which transitions are allowed. 

Below is a heat map for the vibrational transitions allowed for the harmonic potential example. 

![HO_prob](/HO.prob_10.png)

As you can see, only direct neighbor transitions are allowed, such as from $\nu = 1$ to $\nu = 2$. However, a transition from $\nu = 1$ to $\nu = 3$ is not allowed. 

![morse_pot](/morse_pot.png)

[Next](/fourier_transform.md) (Fourier Transform)
