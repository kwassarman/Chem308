{% include mathjax.html %}

(For table of contents, visit [homepage](/README.md))

# March 1: Class Summary

Today in class we were trying to write code for TDSE but instead of using [differentials](TDSE.md) we wanted to use differences. Although using difference for graphing will result in uncertainty overtime, it explains what is happening with the TDSE in a different way. Below I will show the steps converting the TDSE with the differential to the difference with explanations after each step.

#### Step 1

We initally start with the following equation:
  \begin{equation}\label{differential}
    \hat{H}\psi_{(x,t)}=i\hbar\frac{\partial\psi_{(x,t)}}{\partial t}
\end{equation}

This is the TDSE with the partial derivative $$\frac{\partial\psi_{(x,t)}}{\partial t}$$. A partial derivative is an infinitesimally small change in $$\psi_{(x,t)}$$ in terms of $$t$$. However, we can change the partial derivative to a change in the wavefunction with a delta instead.

#### Step 2

We can replace the partials with deltas:
  \begin{equation}\label{delta2}
    \hat{H}\psi_{(x,t)}=i\hbar\frac{\Delta\psi_{(x,t)}}{\Delta t}
\end{equation}

Now we have a ratio of the change in the wavefunction over the change in time, $$\frac{\Delta\psi_{(x,t)}}{\Delta t}$$. In order to make more sense of what this equation could mean, it will be useful to disect the different parts.

#### Step 3

We can rewrite $$\Delta\psi_{(x,t)}$$ as the difference between two states:
  \begin{equation}\label{delta3}
    \Delta\psi_{(x,t)}=\psi_{(x,t+\Delta t)}-\psi_{(x,t)}
\end{equation}

In order to be able to graph the new wave function at a certain time, we need to solve equation 3 above for $$\psi_{(x,t+\Delta t)}$$ because this is the new wavefunction after a time $$\Delta t$$. 

#### Step 4

We can plug equation 3 in for $$\Delta\psi_{(x,t)}$$ in equation 2:
  \begin{equation}\label{delta4}
    \hat{H}\psi_{(x,t)}=i\hbar\frac{\psi_{(x,t+\Delta t)}-\psi_{(x,t)}}{\Delta t}
\end{equation}

Now we have the new wavefunction that we want to solve for in the equation. The next few steps are algebraic steps that isolate $$\psi_{(x,t+\Delta t)}$$ on one side of the equation.

#### Step 5

We multiply both sides by $$\frac{\Delta t}{i\hbar}$$ to the other side of the equation in equation 3 above:
  \begin{equation}\label{delta5}
    \frac{\Delta t}{i\hbar}\hat{H}\psi_{(x,t)}=\psi_{(x,t+\Delta t)}-\psi_{(x,t)}
\end{equation}

#### Step 6

Then we can add $$\psi_{(x,t)}$$ to both sides of the equation:
  \begin{equation}\label{delta6}
    \frac{\Delta t}{i\hbar}\hat{H}\psi_{(x,t)}+\psi_{(x,t)}=\psi_{(x,t+\Delta t)}
\end{equation}

At this point we have solved for $$\psi_{(x,t+\Delta t)}$$. If we put $$\Delta\psi_{(x,t)}$$ back in we end up with 

$$\psi_{(x,t+\Delta t)}=\Delta\psi_{(x,t)}+\psi_{(x,t)}.$$

This makes sense because the new wavefunction is the original wavefunction plus the change in the wavefunction. 

We can further simplify equation 6 by factoring out $$psi_{(x,t)}$$ on the other side of the equation. This will result in an operator operating on $$psi_{(x,t)}$$.

#### Step 7

Factoring out $$\psi_{(x,t)}$$:
  \begin{equation}\label{delta7}
    \psi_{(x,t+\Delta t)}=\psi_{(x,t)}(\frac{\Delta t}{i\hbar}\hat{H}+1)
\end{equation}

At this point we have the new wavefunction equal to an operator that you can use to operate on your original wavefunction. The operator consists of the sum of two matrices where one represents the constants and Hamiltonian operator and the other is the scalar 1. The Hamiltonian operator will be the same matrix that has been previously defined and you can multiply the constants as a scalar to the matrix. And in order to add 1 as a matrix, this will be the identity matrix with the same dimensions as the Hamiltonian. Therefore, the operation will be the matrix times the original wavefunction to give the new wavefunction after time, $$\Delta t$$. 

In order to visualize the animation, this operation can be put in a for loop in which you set $$\Delta t$$ and use the output of one operation as the input of the next. And so each new wavefunction is plotted and you can visualize what occurs over time. However, if you make $$\Delta t$$ too large, uncertainty will accumulate over time. 
