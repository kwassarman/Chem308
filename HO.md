{% include mathjax.html %}

(For table of contents, visit [homepage](/README.md))

[Previous](/Perturb.md)/[Next](/Selection_rules.md)

# Harmonic Oscillator

The harmonic oscillator is another model that can be used to understand chemistry on the quantum level. HO models bond vibration, and can be used in similar ways as particle in a box. This model uses a different potential well as PIB, however, both models can be operated on with the Hamiltonian to determine the energy levels of a system. Below is a general picture of bond vibration within the harmonic oscillator well.

![general_HO](/general_HO.gif)

The red atom is fixed in space and the blue atom is vibrating back and forth. This can be done by using the reduced mass ($\frac {m_1 m_2}{m_1 + m_2}), and therefore, instead of accounting for the motion of both atoms, you only need to calculate one motion.

## Understanding Harmonic Oscillation

Every molecule has a harmonic oscillation. Below shows a way to explore finding the harmonic oscillation of a system.

The animation below shows the harmonic oscillation of the wavefunction. This is the correct oscillation frequency (harmonic frequency) in order for the system to gain energy. The graph on the right shows the amount of contribution from each energy level. At the beginning, almost all of the contribution was coming from the ground state (seen by the orange line at 1). But as the system gains more energy from the oscillation, more energy levels are accessible, so there are contributions from more states.

![oscillator](/oscillation.gif)

However, the tilting of the box does not always result in the above animation. Below shows an animation where the oscillation does not match the harmonic frequency of the system. Therefore, energy is not able to accumulated and only the ground level energy state is still accessible (right graph).

![oscillator2](/oscillation2.gif)

## Harmonic Oscillator Potential Well

There are two main potential wells for HO. The first is the harmonic oscillator case, in which the potential well is symmetrical on both sides. Below is an image of the potential well for the harmonic case and is modeled by a parabola where the minimum is the equilibrium bond length. The amount of energy stabilization and the bond length are different for different systems.

![harmonic potential well](/harmonicPW.png)

Although the harmonic case is a useful model of the lower energy states, it does not accurately demonstrate the dissociation of the two atoms at higher energy levels. This is because the average bond length at any energy level will be the equilibrium bond length, so the bond would never break even at infinite temperatures. Therefore, a model of the anharmonic case can also be used to show the dissociation of the atoms. This potential is known as the Morse potential. At low energy, this potential is very similar to the harmonic case, but at higher temperature, the well is no longer symmetric. This allows for the dissociation of the atoms. Below is the Morse Potential.

![Morse potential well](/morsePW.png)

## Harmonic Oscillator: TDSE

This new potential well can be applied using the TDSE in a similar way to PIB. Everything is the same, however, instead of the infinite well potential, now the potential well is the HO. Either the harmonic oscillator or the Morse potential well can be used. Below is a picture of the first 6 energy levels for the harmonic potential well. The energy levels are evenly spaced and there is more electron density towards the middle the well versus the sides.

![HO_6](/HO_6.png)

Below is first 10 energy levels for the Morse potential well. The bottom energy levels are similar to that of the harmonic case, however, at higher energy levels the wavefunctions begin to deviate from the harmonic case. There is a spreading of the wavefunction to the left to accommodate the asymmetry of the potential well. The energy levels are still evenly spaced in the anharmonic case.

![morse_10](/Morse_10.png)

[Next](/Selection_rules.md) (Selection Rules)

![Code for HO](/HOcode.md)

![Code for Morse Potential](/morsecode.md)
