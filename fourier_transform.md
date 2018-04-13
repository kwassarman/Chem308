{% include mathjax.html %}

(For table of contents, visit the [homepage](/README.md))

[Previous](/Selection_rules.md)/[Next](/chemical_bonding.md)

# Fourier Transform

Fourier transforms can be used to change from one basis to another such as time and frequency or position and wavenumber. Time ($t$) and wavenumber ($\omega$) are related by the fourier transform and have inverse units of seconds and inverse seconds, respectively. Also position ($x$) and wavenumber ($k$) are related by the fourier transform with units of meters and inverse meters, respectivley. Operations in one basis are often easier than the other, so it is a useful tool to perform difficult calculations. Later, this tool is used to calculate TDSE for more than one dimension and more than one particle. 

To use the fourier transform to convert from position to wavenumber, you start with a function $f(x)$. Then you can transform this to yield $\hat {f}(k)$. The following shows the overall equation:
\begin{equation}\label{fourier}
  \mathscr{F}(f(x)) = \hat {f}(k)
\end{equation}

$\hat{f}(k)$ specifies how much pure sinusoid of wavenumber ($k$) contributes to $f(x)$ and spans all of $k$ values.

There are two equations that cna be used to show sinusoids with wavenumber:

1. $a \cdot cos(kx) + b \cdot sin(kx)$ and this can be rewritten as $R \cdot cos(kx-\phi)$, where $R=\sqrt{a^2+b^2}$ and $\phi=arctan(\frac {b}/{a})$

2. $e^{ikx}=cos(kx)+isin(kx)$ by Euler's approximation

Below is a video of position and momentum with different k values. The left graph is the wavepacket in position space, and the graph on the right is the wavepacket in momentum space. As the k value increases, the wavelength with decrease and the graph will be steeper. 

![video](/fourier_transform.gif)

The video begins with a narrow wavepacket for position, which indicates high certainty for position. However, this results in a more "kinky" momentum packet. This is do to the Heisenberg Principle and stems from the Fourier transform. Also, when the wavepacket begins as a gaussian at the origin (x=0, k=0), then the momentum packet for momentum is also a gaussian at the same time. However, when the wavepacket begins not at the origin, then the two are not gaussians at the same time. 

[Next](/chemical_bonding.md) (Chemical Bonding from Quantum Level)
