function TDSE2(n)
hbar=1;
m=1; % mass of electron
l=1; % length of box 0.5 nm (written in meters)
pts=250; % number of discretized points
w=3; % number of points within infinite wall
x=linspace(0,l,pts)'; % discretized space
dx=x(2)-x(1);
barht=1E6; %bar height on potential matrix
c=-(hbar.^2)/(2.*m); % constant in kinetic energy operator

D=(1/((dx)^2)).*(-2*eye(pts)+diag(ones(pts-1,1),-1)+diag(ones(pts-1,1),1)); % second derivative matrix
T=c.*D;

Vvec=zeros(pts,1);
Vvec([1:w,(end-(w-1)):end])=barht;
V=diag(Vvec);

H=T+V;

[vecs,vals]=eig(H); % determining eigen vectors and eigenvalues
[srtvecs,srtvals]=eigsort(vecs,vals); % sorting eigenvalues in ascending order

psiE=zeros(pts,1);
psiE(n)=n;

psiX=srtvecs*psiE;
size(x);
size(psiX);
figure(1)
clf
subplot(1,2,1)
KLW_plot3(x,psiX)
subplot(1,2,2)
KLW_plot3(diag(srtvals),psiE)
end

function [ srtvecs,srtvals ] = eigsort( vecs,vals )
d=diag(vals);
[dsort,ord]=sort(d);
srtvecs=vecs(:,ord);
srtvals=diag(dsort);

end

function KLW_plot3(basisaxis,psi);
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