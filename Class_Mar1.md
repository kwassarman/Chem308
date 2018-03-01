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

At this point we have solved for $$\psi_{(x,t+\Delta t)}$$ but we can further simplify what it equal to by factoring out $$psi_{(x,t)}$$ on the other side of the equation. This will result in an operator being performed on $$psi_{(x,t)}$$.

#### Step 7

Factoring out $$psi_{(x,t)}$$:
  \begin{equation}\label{delta7}
    \psi_{(x,t+\Delta t)}=\psi_{(x,t)}(\frac{\Delta t}{i\hbar}\hat{H}+1)
\end{equation}

