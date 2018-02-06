function TDSE(n)
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
psiE(1)=1;

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