{% include mathjax.html %}

(For table of contents, visit the [homepage](/README.md))

[Previous](Change_Basis.md)/[Next](TISE.md)

# Summary of Quantum Ideas

A **wavefunction** $$(\psi)$$ is the complete description of the quantum state of a particle. Wavefunctions can be expressed as a function or matrix of state vectors. It is often easier to work with wavefunctions when expressed in a matrix of state vectors. Any physical property, called **observables**, of a particle can be extracted from the wavefunction. Measurement outcomes can be predicted by operating on the wavefunction using different operators, such as the position or energy operator. Operators are matrices that can be multiplied to the wavefunction matrix and result in a matrix of the observables.

## Position $$(\hat{x})$$ and Momentum $$(\hat{p})$$ Operators

When the wavefunction is expressed as a function, the position operator is 

$$\hat{x}=x$$ 

and the momentum operator is 

$$\hat{p}=-i\hbar\frac{\partial}{\partial x}.$$

Similarly, the position and momentum operators can be expressed as matrices. Linear algebra is useful in order to utilize coding in Matlab to do the calculations for us. For the position operator, since it is multiplying by a constant, this is a matrix with that constant on the diagonal. 

\begin{bmatrix}
x & 0 & 0 & 0 \\
0 & x & 0 & 0 \\
0 & 0 & x & 0 \\
0 & 0 & 0 & x
\end{bmatrix}

And for the momentum operator, the matrix can be multiplied by the constants in the front. The first derivative matrix is the following:



## Kinetic Energy Operator $$(\hat{T})$$

When the wavefunction is expressed as a function, the position operator is 

$$\hat{T}= -\frac{\hbar^2}{2m}\frac{\partial ^2}{\partial x^2}$$

And therefore, when a wavefunction is operated with the position operator, the equation looks like

  \begin{equation}\label{kineticop}
    \hat{T}\psi(x)=t\psi(x)
\end{equation}

The kinetic energy operator can also be expressed as a matrix that can be then be used to operate on the wavefunction vector. The matrix for the kinetic energy operator has two different parts (1) the constant $$-\frac{\hbar^2}{2m}$$ and (2) the second derivative matrix, which has twos on the diagonal, negative ones below the diagonal, and ones above the diagonal. 

The following is the Matlab code for the kinetic energy operator matrix:
```Matlab
% The following is defining the constant
  c=-(hbar.^2)/(2.*m);
% The code for second derviative matrix
  A=-2*eye(pts);        % twos on the diagonal 
  b=ones(pts-1,1);      % vector of 1
  B=diag(b,-1);         % negative ones below diagnol
  B2=diag(b,1);         % ones above diagnol 
  D=A+B+B2;             % second derviative matrix
% The code for the kinetic energy operator
  T=c.*D;          
``` 
## Hamiltonian Operator $$(\hat{H})$$

The Hamiltonian operator gives the total energy of a system. It is the sum of the kinetic energy operator and the potential energy operator. The potential energy operator is dependent on the model that is being used (such as [particle in a box](PIB.md), particle in a ring, harmonic ocsillator, etc.). Once the Hamiltonian is determined based on the potential energy operator, the Hamiltonian operator can be used on the wavefunction to determine the total energy of a particle in different states. 

The following is the Matlab code for determining the eigenvectors and eigenvalues resulting from using the Hamiltonian operator on a wavefunction. It also sorts the eigenvectors and eigenvalues in ascedning order from the lowest state to the highest. This can be used in order to look at the lowest energy states first. For my code, I have called this function as eigsort and is shown below the original code.
```Matlab
% The code for determining output
  [vecs,vals]=eig(H); % eigenvectors and eigenvalues
  [srtvecs,srtvals]=eigsort(vecs,vals); % sorts 
    
% The following is the eigsort function
  function [srtvecs, srtvals] = eigsort(vecs,vals)
    d=diag(vals);
    [dsort,ord]=sort(d);
    srtvecs=vecs(:,ord);
    srtvals=diag(dsort);
  end
```
The output for the eigenvectors and eigenvalues will be different for different potential energy matrices. The potential energy matrices can change based on the potential well for particle in a box as well as changing the model being used on the system. However, once the Hamilotian operator is defined, the code to operate on the wavefunction with the Hamilotian operator is the same.

[Next](TISE.md) (Time Indpendent Schrödinger Equation)
