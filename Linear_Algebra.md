{% include mathjax.html %}

[Homepage](/README.md)/[Next](Quantum_ideas.md)

# Linear Algebra Basics

Linear algebra is the natural language of quantum mechanics, so it is important to understand basic concepts of linear algebra. This opening page can be used as a reference point when looking at the rest of the webpage. For quantum mechanics, wavefunctions are expressed as vectors and operators are expressed as matrices (more explained later). Below are different linear algebra concepts that are useful.

## Vectors

There are two kinds of vectors (1) row and (2) column vectors. *Row* vectors are 1 x m dimensions and consist of a row with m elements,

$$\begin{pmatrix} x_1 & x_2 & ... & x_n
\end{pmatrix}$$

*Column* vectors are m x 1 dimensions and consist of a column with m elements, 

$$\begin{pmatrix} x_1\\x_2\\ \vdots \\x_n
\end{pmatrix}$$

## Vector Operations

*Scalar multiplication* takes the product of each element in the vector and the scalar, 

$$c\begin{pmatrix} x_1\\x_2\\ \vdots \\x_n
\end{pmatrix}=\begin{pmatrix} c x_1\\c x_2\\\vdots\\ c x_n
\end{pmatrix}$$

Vectors can also be *added* to each other by taking each element of the vector and adding it to the element in the same position. For vector addition, the vectors need to both be either column vectors or row vectors and also they need to be the same size.

$$\begin{pmatrix} x_1\\x_2\\\vdots\\ x_n
\end{pmatrix}+\begin{pmatrix} y_1\\y_2\\\vdots \\y_n
\end{pmatrix}=\begin{pmatrix} x_1+y_1\\x_2+y_2\\\vdots\\ x_n+y_n
\end{pmatrix}$$

When working with vectors for quantum mechanics, it is useful to be able to normalize vectors. A normalized vector has the sum of the square of its elements equal to 1. In order to get the normalized vector, you multiply the vector by the scalar $\displaystyle \frac
1{||\vec v ||}$. This gives the unit vector, 

$$\vec u= \frac 1{||\vec v ||} \vec v,$$

where $||\vec v||$ is the magnitude (or length) of the vector. 

The *inner product* of vectors is important in quantum mechanics to be able to calculate observables from wavefunctions. The inner product is the product of corresponding elements and then adding the resulting products together. The result of doing an inner product operation is a scalar. 

$$\begin{pmatrix} x & y
\end{pmatrix}\*\begin{pmatrix} c\\d
\end(pmatrix}=\xc+yd$$

$<v,w>=\\xc+yd={\begin{pmatrix} x & y \end{pmatrix}} \begin{pmatrix} c\\d \end{pmatrix}$

The inner product can also be used to determine the length and angle of vectors when taking the inner product of itself, 

$$||\vec v||=\sqrt{\langle \vec v , \vecv \rangle}$$

## Orthonormal Bases

In quantum mechanics it is important to have 
