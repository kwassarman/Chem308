{% include mathjax.html %}

(For table of contents, visit [homepage](/README.md))

[Linear Algebra Basics](Linear_Algebra.md)

[Complex Numbers](Complex_Numbers.md)/[Quantum Ideas](Quantum_ideas.md)

# Change of Basis

Changing the basis is useful in order to be able to do operations on a wavefunction. This is especially useful when using the time dependent Schrödinger equation ([TDSE](TDSE.md)) for non-stationary states. These ideas are explained in more detail later, but this page is to help understand the basics behind change of basis. A vector can be expressed in different bases such as position, momentum, and energy. When a wavefunction, say $$\psi(x)$$, is operated on by $$\hat{H}$$ in the position basis, this operation occurs in its **natural basis**. This is because $$\psi(x)$$ is in terms of position and $$\hat{H}$$ is also in terms of position. Therefore after the operation, the result will be a detla function at the eigenvalue. 

Therefore, the wavefunction can be expressed as a linear combination of vectors $$\vec{x_1}, \vec{x_2}, \vec{x_3}, ..., \vec{x_n}$$, where each vector $$\vec{x_j}$$ has different weight $$c$$. So, 

  \begin{equation}\label{basis}
    \psi(x) = c_1\vec{x_1} + c_2\vec{x_2} + c_3\vec{x_3} + ... + c_n\vec{x_n}
\end{equation}

Each $$\vec{x_j}$$ is a vector of all zeros except for a 1 at the j position. Therefore, in order to get a delta function at a specific $$j$$ position, you need to have $$c_j$$ be a nonzero number. Equation 1 above can be rewritten in vector form,

$$\psi(x) = c_1 \begin{pmatrix} 1 \\ 0 \\ 0 \\ \vdots \\ 0 \end{pmatrix} + c_2 \begin{pmatrix} 0\\1\\0\\ \vdots \\0 \end{pmatrix} + c_3 \begin{pmatrix} 0\\0\\1\\ \vdots \\0 \end{pmatrix} + c_n \begin{pmatrix} 0\\0\\0\\ \vdots \\1 \end{pmatrix} = \begin{pmatrix} c_1\\0\\0\\ \vdots \\0 \end{pmatrix} + \begin{pmatrix} 0\\c_2\\0\\ \vdots \\0 \end{pmatrix} + \begin{pmatrix} 0\\0\\c_3\\ \vdots \\0 \end{pmatrix} + \begin{pmatrix} 0\\0\\0\\ \vdots \\c_n \end{pmatrix}$$

Therefore, in order to determine the energy for the Time Independent Schrödinger Equation, you can just use the Hamiltonian operator in the position basis. This is because the eigenvalue output using a Hamiltonian operator in any basis will always be the same. The fact that the eigenvalues is the same no matter the basis is usesful for changing between bases. Therefore in order to change between basis you can multiply by the eigenvectors matrix or the inverse of the eigenvectors matrix to convert between the position and energy bases. To go from the energy basis to the position basis you use the eigenvectors and to go from the position basis to the energy basis you use the inverse of the eigenvectors. 

So the following two relationships are true:

$$[eigenvectors]\psi_E=\psi_x$$

$$\psi_E = [eigenvectors]^-1 \psi_x$$

This is useful when using the Time Dependent Schrödinger Equation for non-stationary states because the wavefunction can be expressed in the energy basis, then operated on, and then converted back to the position basis. It is easier to use the Hamiltonian operator for the TDSE in the energy basis because the operator can no longer be separated into position and time components, which means that you cannot multiply $$\psi(x)$$ by the time dependent part. But because the exponent in the time dependent part contains energy, it makes more sense to change the wavefunction basis to energy because then you can multiply by the exponent part. Therefore, you are able to look at non-stationary states. This is described more in depth on [The Time Dependent Schrödinger Equation page](TDSE.md).

