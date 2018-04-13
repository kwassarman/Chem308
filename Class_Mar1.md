{% include mathjax.html %}

(For table of contents, visit [homepage](/README.md))

[Previous](/PIB_TDSE.md)/[Next](/Perturb.md)

# TDSE Using Difference

Time dependence can also be determined through difference equations instead of partial derivatives. Although using difference for graphing will result in uncertainty overtime, it explains what is happening with the TDSE in a different way. Below I will show the steps converting the TDSE with the differential to the difference with explanations after each step.

### Determining Difference Equation

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
    \psi_{(x,t+\Delta t)}=(\frac{\Delta t}{i\hbar}\hat{H}+1)\psi_{(x,t)}
\end{equation}

At first you might be questioning whether you can factor out $$\psi_{(x,t)}$$ like was done in equation 7. Yes, this is allowed in the same way that the Hamiltonian operator is the sum of the kinetic and potential energy operators. And so the two operations can be added together before operating on the wavefunction. Therefore, you can add the two parts that are operating on $$\psi_{(x,t)}$$ and make a single operator.

At this point we have the new wavefunction equal to an operator that you can use to operate on your original wavefunction. The operator consists of the sum of two matrices where one represents the constants and Hamiltonian operator and the other is the scalar 1. The Hamiltonian operator will be the same matrix that has been previously defined and you can multiply the constants as a scalar to the matrix. And in order to add 1 as a matrix, this will be the identity matrix with the same dimensions as the Hamiltonian. Therefore, the operation will be the matrix times the original wavefunction to give the new wavefunction after time, $$\Delta t$$. 

In order to visualize the animation, this operation can be put in a for loop in which you set $$\Delta t$$ and use the output of one operation as the input of the next. And so each new wavefunction is plotted and you can visualize what occurs over time. However, if you make $$\Delta t$$ too large, uncertainty will accumulate over time. 

### Analyzing Components of Equation

We have breifly mentioned a few things that could influence how large the change is in the new wavefunction, but will present here all of the different components that influence the change. We will look at the components of $$\Delta\psi_{(x,t)}$$.

$$\Delta\psi_{(x,t)}=\frac{\Delta t}{i\hbar}\hat{H}\psi_{(x,t)}$$

**1.** $$\frac{1}{i\hbar}$$ is a constant so will always have the same affect no matter the original wavefunction

**2.** $$\Delta t$$ is also a constant that we can define and so will always have the same affect no matter the original wavefunction

**3.** This only leaves one thing that could be affecting the change to be different based on the wavefunction and this is the Hamiltonian operator:

$$\hat{H}=-\frac{\hbar^2}{2m}\frac{\partial^2}{\partial x^2}+V(x)$$

**4.** Again, $$-\frac{\hbar^2}{2m}$$ is a constant so will always have the same affect on the change. However, it is interesting to note that as mass increases the change in the wavefunctions gets smaller and on the macroscopic level the change is basically nonexistent. This has to do with the *Correspondence Principle* which states that as particles get larger everything begins to look continuous.

**5.** The operator $$V(x)$$ stays constant for the system (at least unless you also have the potential changing over time) and, therefore, again has the same affect on the changing wavefunction

**6.** Therefore, the only thing that affects the change over time of the wavefunction is the second partial derivative, $$\frac{\partial^2}{\partial x^2}$$, in the Hamiltonian. Lets look at the two graphs below and discuss which of the two has a larger second derivative:

![cos(x)](/Document1-1.png)

The one on the right has a larger second derivative because it has more "bumps" in the wavefunction. Therefore, the wavefunction on the right will have a larger change in the wavefunction over time versus the one on the left. This makes sense if you think back to the animations on the [TDSE PIB page](PIB_TDSE.md). For lower states of a wavefunction, it rotates slower overtime versus a higher state wavefunction. Below is an animation of n=2 and4, respectively.

![Animation](/n=2,4.gif)

As you can see n=2 is rotating the slower than n=4.

[Next](/Perturb.md) (Introduction to Perturbation Theory)
