{% include mathjax.html %}

(For table of contents, visit [homepage](/README.md))

[Previous](TDSE.md)

# Particle in a Box TDSE

The general set up of PIB for The Time Dependent Schrödinger Equations is similar to that of The Time Independent Schrödinger Equation. The potential well, Hamiltonian operator, eigenvalues, and eigenvectors are the same as in the TISE PIB. However, because the TDSE evolves with time, the plot now has to be an animation to represent the progression of time. 

From the PIB for TISE, the wavefunction vector is defined in position space. In order to switch between the position and energy bases, the following Matlab code can be used:
```Matlab
EtoX=vecs; 
XtoE=inv(vecs);
```
Therefore, in order to get into the energy basis, you can multiply EtoX by the vector of a specific state you want in the energy basis. For example, if you want the second state in the energy basis, you can use the following vector $$\psi_E=\begin{pmatrix} 0\\1\\0\\ \vdots \\ 0 \end{pmatrix}$$. The following is the Matlab code that can be used to get the vector of the wanted $$\psi_E$$:
```Matlab
psiE=zeros(pts,1); 
psiE([n])=1;
```
From here, you can use a loop in order to get the animation to go for a specified amount of time. This means that you can go through a certain number of time points and determine the position and energy at that point and graph it. Then you can continue to the next time point. This will result in an animation over time. 

Below is the Matlab code for the animation. The KLW_plot3 function is shown at the bottom of this page. 
```Matlab
t=0; dt=0.1;
for k=1:50 % number of time points
    psiEt=psiE.*exp(-i*diag(srtvals)*t/hbar); % operating with T
    psiEt=psiEt/norm(psiEt); % normalize vector of psiE dependent on time
    psiXt=EtoX*psiEt;
    psiXt=psiXt/norm(psiXt); % normalize vector of psiX dependent on time
    rpsiXt=abs(psiXt).^2;
    expE=real(psiEt'*(srtvals*psiEt)); % determines energy expectation value in energy basis
    repvals=(ones(pts,1))*expE;
    snrpsiXt=rpsiXt+repvals; % shifted psiXt by energy
    expX=real(psiXt'*(x.*psiXt)); % expectation value for position
    figure(1)
    subplot(2,2,1)
    KLW_plot3(x,psiXt)
    subplot(2,2,2)
    KLW_plot3(diag(srtvals),psiEt)
    subplot(2,2,[3,4])
    plot(x,snrpsiXt(:,1),expX,expE,'r *')  
    axis([0 1 expE-0.015 expE+0.015])
    text(0.2,expE+0.013,['E= ' num2str(expE)])
    drawnow
    t=t+dt;
end
```
## Start with Specified State

We initially looked at the animation when a specific state was defined for n. The input of n could be a single value, which is a stationary state, or n could be multiple values, which is a non-stationary state. Below is a general output that represents the system of n=2.

![Animation](/n=2.gif)

The plot on the upper left shows the position basis of the wavefunction overtime. If it is a stationary state, then the sine function rotates around in the real and imaginary at a constant rate across the function. However, if it is a non-stationary state, then the different parts on the function rotate at different speeds. This is because at different parts of the function there are different amounts of energy. Therefore, the time dependent part ($$T=e^{-i E_n t/\hbar}$$) is changing for the different states so the position is not changing at a constant rate. The plot on the upper right shows the energy basis of the wavefunction overtime. If it is a stationary state, then there is only one "lollipop" rotating because there is only one energy present. However, if it is a non-stationary state, then there are multiple "lollipops" representing different energies rotating at different speeds. The plot on the bottom shows the probability density of position and the red star shows the expectation value (average) of position. For a stationary state, this plot will not change. However, for a non-stationary state, the probability density will change and so will the average velocity.

Below is an image of a non-stationary state where n=2,3.

![Animation](/n=2,3.gif)

## Start with Probability Density

Sometimes you want to see what will happen to a particle if you start with specific probability density. For example, if you want to start with all the probability density starting on the left side of the box. In order to do this, you begin with the wavefunciton in the position basis. The wavefunction should be a Gaussian curve because this function has the lowest uncertainty when doing the Fourier Transform between the position and momentum bases. Therefore, you want to define the wavefunction as $$\psi_x=e^{\gamma(x-a)^2}e^{-i k x}$$ because this is the equation for a Gaussian curve. From here the rest is the same as if you were starting with a specified state. Below is an image of a Gaussian curve with the same three plots as above. Again, to see the animation [open](TDSEa4.m) this in Matlab.

![Gaussian](/Gaussian.png)

[Homepage](/README.md)

#### Matlab Code for KLW_plot3
```Matlab
%% Plot complex valued vectors as 3D plots. The complex plane forms the
%% backdrop for the plot and the eigenvalue axis (defining the space)
%% projects out from that plane.
        
        s = 1; % 1/s defines the fraction of eigenvalue axis that is displayed
        
    % Begin by grabbing the real and imaginary parts of the vector psi,
    % defining the length of the "space" axis, and defining a vector of 
    % zeros that serve as the axis relative to which psi is plotted.
        realpart = real(psi);   % extract the real part of psi
        imagpart = imag(psi);   % extract the imaginary part of psi
        n = length(basisaxis);  % number of points in each vector
        bsl = zeros(n,1);       % define baseline as n zeros

    % Create a three dimensional stem plot. The bases of the stems are 
    % placed at the baseline "bsl" and the heads of the stems are displaced
    % from the baseline by the real and imaginary values of each vector
    % element
        plot3(...
          [basisaxis basisaxis]',[bsl realpart]',[bsl imagpart]','k',... % draw black stems
          basisaxis,realpart,imagpart,'b.') % draw stem heads as blue dots
        axis([min(basisaxis) max(basisaxis)/s -1 1  -1 1]); % set axis limits
        pbaspect([3,1,1])   % fix aspect ratio of 3D plot
        view([70,10])       % define the view angle
grid on             % turn on the grid
end 
```
