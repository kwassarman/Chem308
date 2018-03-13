function HO(n)
hbar=1;
m=1; % mass of electron
l=1; % length of box 0.5 nm (written in meters)
pts=250; % number of discretized points
w=3; % number of points within infinite wall
x=linspace(-1,l,pts); % discretized space
dx=x(2)-x(1);
barht=1E6; %bar height on potential matrix
c=-(hbar.^2)/(2.*m); % constant in kinetic energy operator
k=1e3; % spring constant for potential energy operator
q=1; %charge of electron (can change value later)

% Define kinetic energy operator matrix (T)
% A=-2*eye(pts); % 2 on diagonal
% b=ones(pts-1,1); % vector of 1
% B=diag(b,-1); % 1 below diagnol
% B2=diag(b,1); % 1 above diagnol
% D=A+B+B2; % second derviative
D=(1/((dx)^2)).*(-2*eye(pts)+diag(ones(pts-1,1),-1)+diag(ones(pts-1,1),1)); % second derivative matrix
T=c.*D;

%Define potentiale energy operator matrix (V) HO with equation 1/2*k*x^2
y=x.^2; % x is the discretized space and y is a vector of vector x squared
Vvec=.5*k*y;
V=diag(Vvec);

H=T+V; % Hamilotian operator matrix (H)

[vecs,vals]=eig(H); % determining eigen vectors and eigenvalues
[vecs,vals]=eigsort(vecs,vals); % sorting eigenvalues in ascending order
sc=100;
vecs=sc*vecs;
v=diag(vals); % vector of sorted eigenvalues
% % figure(5)
% % plot(v(1:100))
% %r=ones(pts,1); % column vector of 1's
repvals=(ones(pts,1))*v';
% % repvals(1:6,1:6)
shiftvecs=vecs+repvals; % eigenvectors shifted based on repvals matrix

% figure(1);plot(x,Vvec);
%figure(1);plot(x,vecs(:,1:n));
figure(1);plot(x,shiftvecs(:,1:n),x,Vvec); % plot potential well and eigenvectors (1-5)
axis([-inf inf 0 200]); % adjusts axes to be able to see eigenvectors
end

function [ srtvecs,srtvals ] = eigsort( vecs,vals )
d=diag(vals);
[dsort,ord]=sort(d);
srtvecs=vecs(:,ord);
srtvals=diag(dsort);

end