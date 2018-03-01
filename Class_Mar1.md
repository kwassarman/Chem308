{% include mathjax.html %}

(For table of contents, visit [homepage](/README.md))

# March 1: Class Summary

Today in class we were trying to write code for TDSE but instead of using [differentials](TDSE.md) we wanted to use differences. Although using difference for graphing will result in uncertainty overtime, it explains what is happening with the TDSE in a different way. Below I will show the steps converting the TDSE with the differential to the difference with explanations after each step.

#### Step 1

We initally start with the following equation:
  \begin{equation}\label{differential}
    \hat{H}\psi(x,t)=i\hbar\frac{\partial\psi_(x,t)}{\partial t}
\end {equation}

This is the TDSE with the partial derivative $$\frac{\partial\psi(x,t)}{\partial t}$$. A partial derivative is an infinitesimally small change in $$\psi(x,t)$$ in terms of $$t$$. However, we can change the partial derivative to a change in the wavefunction with a delta instead.

#### Step 2

We can replace the partials with deltas:
  \begin{equation}\label{delta}
    \hat{H}\psi(x,t)=i\hbar\frac{\Delta\psi_(x,t)}{\Delta t}
\end{equation}

