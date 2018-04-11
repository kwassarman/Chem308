{% include mathjax.html %}

(For table of contents, visit [homepage](/README.md))

[Previous](.md)/[Next](.md)

# Chemical Bonding from Quantum Perspective

Up to this point, only systems with two particles have been solved with the Schrödinger equation. On the [Pertubation Theory](/perturb.md) page, $H_2^+$ was discussed and it was said that the wavefunctions could not be solved. This is because it is impossible to solve the Schrödinger equation for a system contianing more than two particles, which is known as the three body problem. Now we are going to examine the interactions more closely for the system using certain approximations. Below $H_2^+$ system is picutred:

![H2+ molecule](H2+.png)

There is kinetic and potential energy in the system. The kinetic energy is of the molecule moving through space from the origin (point A). And the potential energy in the system is interactions between the three bodies (nucleus-nucleus interaction and nucleus-electron interactions). Each of the particles have a charge of $q$ where the electron is negative and each of the nuclei are positive. There are attractive forces between the electron and each of the nuclei as well as repulsive forces between the nuclei. Therefore, in order to determine the energy of the system, these potetial energy forces need to be taken into account as well as the motion of the molecule through space. The Hamiltonian can be written as follows (where $\nabla = \frac {\partial}{\partial x}$):

$\hat H = (\frac {-\hbar^2}{2M_a} \nabla_a^2 + \frac {-\hbar^2}{2M_b} \nabla_b^2) + \frac {-\hbar^2}{2m_e} \nabla_e^2 + (-\frac {q^2}{4 \pi \epsilon_o r_a} - \frac {q^2}{4 \pi \epsilon_o r_b}) + \frac {q^2}{4 \pi \epsilon_o R_{ab}}$

This can then be rewritten as a sum of four different parts:

$\hat H = \hat T_{nuc} + \hat T_e^{-} + \hat V_{nuc-e^-} + \hat V_{nuc-nuc}$, 

where $\hat T_{nuc} = \frac {-\hbar^2}{2M_a} \nabla_a^2 + \frac {-\hbar^2}{2M_b} \nabla_b^2$, $\hat T_e^{-} = \frac {-\hbar^2}{2m_e} \nabla_e^2$, $\hat V_{nuc-e^-} = -\frac {q^2}{4 \pi \epsilon_o r_a} - \frac {q^2}{4 \pi \epsilon_o r_b}$, and $\hat V_{nuc-nuc}=\frac {q^2}{4 \pi \epsilon_o R_{ab}}$.

This Hamiltonian can then be "solved" to determine the total energy of the system: $\hat H \Psi = \xi \Psi$. 

This problem cannot be solved and so an approximation is needed in order to spearte the two components of the Hamiltonian: the nucleus and the electron. The [Born-Oppenheimer Approximation](/BO.md) can be used in order to solve this problem. More is discussed about the approximation and assumptions on the B-O Approximation page. 

Once the Born-Oppenheimer Approximation is applied, the wavefunction can be separated into the nucleus and nucleus-electron components:

$\Psi (r, R_a, R_b) = \psi (r,R) \chi (R)$, where $r, R_a, R_b$ are the distances from the origin position point A. 

Therefore, the Schrödinger Equation can be rewritten as:

$\hat H (\psi_{(r;R)} \chi_{(R)})=\xi (\psi_{(r;R)} \chi_{(R)})$

The Hamiltonian ($\hat H$) is comprised of the summation of four different compenents, as shown above. These operators can be separated and the wavefunctions can be operated on separately as shown below:

$\hat T_{nuc} (\psi \chi) + \hat T_{e^-} (\psi \chi) + \hat V_{nuc-e^-} (\psi \chi) + \hat V_{nuc-nuc} (\psi \chi) = \xi (\psi \chi)$

In order to separate the two components of the wave function ($\psi$ and $\chi$), you can divide by $\psi \chi$ as follows:

$\frac {\hat T_{nuc} (\psi \chi)}{\psi \chi} + \frac {\hat T_{e^-} (\psi \chi)}{\psi \chi} + \frac {\hat V_{nuc-e^-} (\psi \chi)}{\psi \chi} + \frac {\hat V_{nuc-nuc} (\psi \chi)}{\psi \chi} = \frac {\xi (\psi \chi)}{\psi \chi}$

Now, some things can be canceled out in order to simiply the equation. Firstly, because the potential operator ($\hat V$) is multiplied by the wavefunction, the wavefunctions can be moved to the front of the operator. Therefore, $\psi \chi$ can be canceled out for these terms. This is the same as the solution on the write side, so only $\xi$ is left on the right. And finally, $\chi$ can be canceled out for $\hat T_{e^-}$ because the kinetic energy of the electron is not dependent on the wavefunction for only the nucleus components. Therefore, the following equation is left:

$\frac {\hat T_{nuc} (\psi \chi)}{\psi \chi} + \frac {\hat T_{e^-} (\psi)}{\psi} + \hat V_{nuc-e^-} + \hat V_{nuc-nuc} = \xi$

Now, lets focus on the term $\frac {\T_{nuc} (\psi \chi)}{\psi \chi}$ because it is the most complicated of the terms left and holds a lot of information. The operator, $\hat T_{nuc}$, can be expanded into its components for both nucleus a and nucleus b:

$\hat T_{nuc} = -\frac {\hbar^2}{2M_a} \nabla_a^2 (\psi \xi) - \frac {\hbar^2}{2M_b} \nabla_b^2 (\psi \chi)$

The components for nucleus a and b will be the same, so we will only expand this equation for nucleus a. Remember that $\nabla = \frac {partial}{partial x}$, so we can put these back into the equation:

$\frac {-hbar^2}{2M_a} \frac {partial}{partial R_a} (\chi \frac {partial \psi}{partial R_a} + \psi \frac {partial \chi}{\partial R_a})$

In order to simplify this, the product rule needs to be used:

$\frac {-hbar^2}{2M_a} ((\chi \frac {\partial ^2 \psi}{\partial R_a^2} + \frac {\partial \psi}{\partial R_a} * \frac {\partial \chi}{\partial R_a}) + (\psi \frac {\partial ^2 \chi}{\partial R_a^2} + \frac {\partial \psi}{\partial R_a} * \frac {\partial \chi}{\partial R_a}))

This can be simplified to:

$\frac {-hbar^2}{2M_a} ((\chi \frac {\partial ^2 \psi}{\partial R_a^2} + \psi \frac {\partial ^2 \chi}{\partial R_a^2} + 2 (\frac {\partial \psi}{\partial R_a} * \frac {\partial \chi}{\partial R_a}))

Now is when the approximation is used. Remember that $\chi$ is the nuclei component and $\psi$ is the electron component. Therefore, because the nucleus is not moving when on the electron time scale, $\psi$ is not changing relative to $R_a$. This is because $R_a$ represents the movement of nucleus a relative to the origin. Thus, ever part of the equation with $\psi$ changing in terms of $R_a$ are equal to zero and can be canceled out. Therefore, the only part left is:

$\frac {-hbar^2}{2M_a} (\chi + \psi \frac {partial ^2 \chi}{\partial R_a^2}$

This is the same for nucleus b because that is the assumption we made above. Therefore, we have determined the equation for $\hat T_{nuc} (\psi \chi)$ as the following:

$\hat T_{nuc} (\psi \chi) = -\frac {hbar^2}{2M_a} \psi \frac {\partial ^2 \chi}{\partial R_a^2} - \frac {hbar^2}{2M_b} \psi \frac {\partial ^2 \chi}{\partial R_b^2}

