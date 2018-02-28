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


