{% include mathjax.html %}

(For table of contents, visit [homepage](/README.md))

# Matlab Code for TDSE PIB

```Matlab
function TDSE_PIB(n)
%% Defining Variables 
    hbar=1;
    m=1;                    % mass of electron
    l=1;                    % length of box 1 
    pts=250;                % number of discretized points
    w=3;                    % number of points within infinite wall
    x=linspace(0,l,pts);    % discretized space (with number of discretized points)
    dx=x(2)-x(1);           % difference of position space
    barht=1E6;              % bar height on potential matrix
    c=-(hbar.^2)/(2.*m);    % constant in kinetic energy operator
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Kinetic Energy Operator Matrix (T)
        % A=-2*eye(pts);    % 2 on diagonal
        % b=ones(pts-1,1);  % vector of 1
        % B=diag(b,-1);     % 1 below diagnol
        % B2=diag(b,1);     % 1 above diagnol
        % D=A+B+B2;         % second derviative
    D=(1/((dx)^2)).*(-2*eye(pts)+diag(ones(pts-1,1),-1)+diag(ones(pts-1,1),1)); % second derivative matrix
    T=c.*D;     % Kinetic Energy Operator Matrix
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Potential Energy Operator Matrix (V)
    Vvec=zeros(pts,1);                  % vector of zeros
    Vvec([1:w,(end-(w-1)):end])=barht;  % define 3 points as infinite barrier
    V=diag(Vvec);                       % matrix with vector on diagnal
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Hamiltonian Operator Matrix (H)
    H=T+V; % add kinetic and potential matrices
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Eigenvectors and Eigenvalues
    [vecs,vals]=eig(H);                     % determining eigenvectors and eigenvalues
    [srtvecs,srtvals]=eigsort(vecs,vals);   % sorting eigenvalues in ascending order
    sc=-100;                                % scaling factor to separate wavefunctions
    srtvecs=sc*srtvecs;                     % scaling vectors
    v=diag(srtvals);                        % vector of sorted eigenvalues
    repvals=(ones(pts,1))*v';               
    shiftvecs=srtvecs+repvals;              % eigenvectors shifted based on repvals matrix
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Plotting Wavefunctions
        t=0; dt=0.1;   % need to use for loop in order to create animation
    for k=1:50         % number of time points
        psiEt=psiE.*exp(-i*diag(srtvals)*t/hbar);   % operating with T
        psiEt=psiEt/norm(psiEt);                    % normalize vector of psiE dependent on time
        psiXt=EtoX*psiEt;                           % change basis from energy to position
        psiXt=psiXt/norm(psiXt);                    % normalize vector of psiX dependent on time
        rpsiXt=abs(psiXt).^2;
        expE=real(psiEt'*(srtvals*psiEt));          % determines energy expectation value in energy basis
        repvals=(ones(pts,1))*expE;
        snrpsiXt=rpsiXt+repvals;                    % shifted psiXt by energy
        expX=real(psiXt'*(x.*psiXt));               % expectation value for position
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
    end                % adjusts axes to be able to see eigenvectors
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Eigensort Function
function [ srtvecs,srtvals ] = eigsort( vecs,vals )
    d=diag(vals);
    [dsort,ord]=sort(d);
    srtvecs=vecs(:,ord);
    srtvals=diag(dsort);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
end 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
```

[Home](/README.md)
