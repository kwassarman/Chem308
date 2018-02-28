{% include mathjax.html %}

(For table of contents, visit [homepage](/README.md))

[Linear Algebra Basics](Linear_Algebra.md)

[Complex Numbers](Complex_Numbers.md)/[Quantum Ideas](Quantum_ideas.md)

# Change of Basis

Changing the basis is useful in order to be able to do operations on a wavefunction. This is especially useful when using the time dependent Schrödinger equation ([TDSE](TDSE.md)) for non-stationary states. These ideas are explained in more detail later, but this page is to help understand the basics behind change of basis. A vector can be expressed in different bases such as position, momentum, and energy. When a wavefunction, say $$\psi(x)$$, is operated on by $$\hat{H}$$ in the position basis, this operation occurs in its **natural basis**. This is because $$\psi(x)$$ is in terms of position and $$\hat{H}$$ is also in terms of position. Therefore after the operation, the result will be a detla function at the eigenvalue. 

Therefore, the wavefunction can be expressed as a linear combination of vectors $$\hat{x_1}, \hat{x_2}, \hat{x_3}, ..., \hat{x_n}$$, where each vector $$\hat{x_j}$$ has different weight $$c$$. So, 

  \begin{equation}\label{basis}
    \psi(x) = c_1\hat{x_1} + c_2\hat{x_2} + c_3\hat{x_3} + ... + c_n\hat{x_n}
\end{equation}


