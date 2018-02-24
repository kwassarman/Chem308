{% include mathjax.html %}

[Homepage](/README.md)/[Next](Quantum_ideas.md)

# Linear Algebra Basics

Linear algebra is the natural language of quantum mechanics, so it is important to understand basic concepts of linear algebra. This opening page can be used as a reference point when looking at the rest of the webpage. For quantum mechanics, wavefunctions are expressed as vectors and operators are expressed as matrices (more explained later). Below are different linear algebra concepts that are useful.

## Vectors

There are two kinds of vectors (1) row and (2) column vectors. *Row* vectors are 1 x m dimensions and consist of a row with m elements,

$$\begin{pmatrix} x_1 & x_2 & ... & x_n\end{pmatrix}$$

*Column* vectors are m x 1 dimensions and consist of a column with m elements, 

$$\begin{pmatrix} x_1\\x_2\\ \vdots \\x_n\end{pmatrix}$$

Different operations can be done on vectors. *Scalar multiplication* takes the product of each element in the vector and the scalar, 

$$c\begin{pmatrix} x_1\\x_2\\ \vdots \\x_n\end{pmatrix}=\begin{pmatrix} c x_1\\c x_2\\\vdots\\ c x_n\end{pmatrix}$$

Vectors can also be added to each other by taking each element of the vector and adding it to the element in the same position. For vector addition, the vectors need to both be either column vectors or row vectors and also they need to be the same size.

\begin{pmatrix} x_1\\x_2\\\vdots\\ x_n
\end{pmatrix}+\begin{pmatrix} y_1\\y_2\\\vdots \\y_n
\end{pmatrix}=\begin{pmatrix} x_1+y_1\\x_2+y_2\\\vdots\\ x_n+y_n
\end{pmatrix}$$

