{% include mathjax.html %}

(For table of contents, visit [homepage](/README.md))

# Matlab Code for TISE PIB

```Matlab
function PIB(n)
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
%% Kinetic Energy Operator Matrix (T)
        % A=-2*eye(pts);    % 2 on diagonal
        % b=ones(pts-1,1);  % vector of 1
        % B=diag(b,-1);     % 1 below diagnol
        % B2=diag(b,1);     % 1 above diagnol
        % D=A+B+B2;         % second derviative
    D=(1/((dx)^2)).*(-2*eye(pts)+diag(ones(pts-1,1),-1)+diag(ones(pts-1,1),1)); % second derivative matrix
    T=c.*D;     % Kinetic Energy Operator Matrix

%% Potential Energy Operator Matrix (V)
    Vvec=zeros(pts,1);                  % vector of zeros
    Vvec([1:w,(end-(w-1)):end])=barht;  % define 3 points as infinite barrier
    V=diag(Vvec);                       % matrix with vector on diagnal

%% Hamiltonian Operator Matrix (H)
    H=T+V; % add kinetic and potential matrices

%% Eigenvectors and Eigenvalues
    [vecs,vals]=eig(H);                     % determining eigenvectors and eigenvalues
    [srtvecs,srtvals]=eigsort(vecs,vals);   % sorting eigenvalues in ascending order
    sc=-100;                                % scaling factor to separate wavefunctions
    srtvecs=sc*srtvecs;                     % scaling vectors
    v=diag(srtvals);                        % vector of sorted eigenvalues
    repvals=(ones(pts,1))*v';               
    shiftvecs=srtvecs+repvals;              % eigenvectors shifted based on repvals matrix

%% Plotting Wavefunctions
    figure(1);plot(x,shiftvecs(:,1:n),x,Vvec); % plot potential well and eigenvectors (1-n)
    axis([-inf inf -.5 300]);                  % adjusts axes to be able to see eigenvectors
end

%% Eigensort Function
function [ srtvecs,srtvals ] = eigsort( vecs,vals )
    d=diag(vals);
    [dsort,ord]=sort(d);
    srtvecs=vecs(:,ord);
    srtvals=diag(dsort);
end
```
[Home](/README.md)
