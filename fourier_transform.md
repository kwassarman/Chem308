{% include mathjax.html %}

(For table of contents, visit the [homepage](/README.md))

[Previous](Class_Mar1.md)/[Next]

# Fourier Transform

Fourier transforms can be used to change from one basis to another such as time and frequency or position and wavenumber. Time ($t$) and wavenumber ($\omega$) are related by the fourier transform and have inverse units of seconds and inverse seconds, respectively. Also position ($x$) and wavenumber ($k$) are related by the fourier transform with units of meters and inverse meters, respectivley. Operations in one basis are often easier than the other, so it is a useful tool to perform difficult calculations. Later, this tool is used to calculate TDSE for more than one dimension and more than one particle. 

To use the fourier transform to convert from position to wavenumber, you start with a function $f(x)$. Then you can transform this to yield $\hat {f}(k)$. The following shows the overall equation:
\begin{equation}\label{fourier}
  \math{F}(f(x)) = \hat {f}(k)
\end{equation}

$\hat{f}(k)$ specifies how much pure sinusoid of wavenumber ($k$) contributes to $f(x)$ and spans all of $k$ values.
