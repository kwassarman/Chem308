{% include mathjax.html %}

(For table of contents, visit [homepage](/README.md))

[Previous](/chemical_bonding.md)/[Next](/molecular_dynamics.md)

# Born-Oppenheimer Approximation

This approximation is used in order to separate the motion of the nucleus from the motion of the electron. The Schrödinger equation cannot be solved for more than two bodies. This is known as the three body problem. Therefore, an assumption needs to be used in order to understand the mechanics of the system. 

The approximation assumes that the nucleus does not move when on the time scale of the electron. This is because the electron is about 1000 times smaller in mass than the nucleus, so the electron moves faster than the nucleus. Therefore, when determining the derivative of the electron in terms of the nuclei distance, the derivative is equal to zero. This allows many of the terms to be canceled out, thus making the calculation possible. 

Solving the Schrödinger equation for more than a three body calculation gets even more complicated even with the B-O approximation. This is because you need to account for the interactions of all the particles to each other as well as the translational motion through space. Thus the degrees of freedom increase with each additional particle. 

[Next](/molecular_dynamics.md) (Molecular Dynamics Investigation)
