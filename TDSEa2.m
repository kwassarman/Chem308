function TDSEa2(n)
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
[vecs,vals]=eig(H); % determining eigenvectors and eigenvalues
[srtvecs,srtvals]=eigsort(vecs,vals); % sorting eigenvalues in ascending order
size(srtvals);
EtoX=srtvecs; % change from energy basis to position basis
XtoE=inv(srtvecs); % change from position basis to energy basis
psiE=zeros(pts,1); % vector of all zeros
psiE([2])=1; % change position 1,2 in vector to 1
psiX=EtoX*psiE;

%reference on how to shift on graph
% sc=100; 
% srtvecs=sc*srtvecs;
% v=diag(srtvals); % vector of sorted eigenvalues
% repvals=(ones(pts,1))*v';
% shiftvecs=srtvecs+repvals;

t=0; dt=0.1;
for k=1:50
    psiEt=psiE.*exp(-i*diag(srtvals)*t/hbar);
    psiEt=psiEt/norm(psiEt); % normalize vector of psiE dependent on time
    % size(psiEt);
    psiXt=EtoX*psiEt;
    psiXt=psiXt/norm(psiXt); % normalize vector of psiX dependent on time
    rpsiXt=abs(psiXt).^2;
    expE=real(psiEt'*(srtvals*psiEt)); % determines energy expectation value in energy basis
    %expE=real(psiXt'*(H*psiXt)); % determines energy expectation value in position basis
    %v=diag(srtvals);
    repvals=(ones(pts,1))*expE;
    snrpsiXt=rpsiXt+repvals; % shifted psiXt by energy
    expX=real(psiXt'*(x.*psiXt)); % expectation value for position
    figure(1)
    subplot(2,2,1)
    KLW_plot3(x,psiXt)
    subplot(2,2,2)
    KLW_plot3(diag(srtvals),psiEt)
    subplot(2,2,[3,4])
    %plot(x,nrpsiXt) % probability density not shifted
    %plot(x,snrpsiXt(:,1)) % probability density shifted
    plot(x,snrpsiXt(:,1),expX,expE,'r *')  
    axis([0 1 expE-0.015 expE+0.015])
    text(0.2,expE+0.013,['E= ' num2str(expE)])
    drawnow
    t=t+dt;
end

end

function [ srtvecs,srtvals ] = eigsort( vecs,vals ) % sorts eigenvectors and eigenvalues so they are in acsending order
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
