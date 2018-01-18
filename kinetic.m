function [R,L,D] = kinetic(n,dx) % n=size of matrix; dx=change in x

% M=-eye(n);
% a=ones(n-1,1);
% R=M+diag(a,-1);
R=(1/dx)*(-eye(n)+diag(ones(n-1,1),-1)); % right derivative matrix

% N=eye(n);
% b=-1*ones(n-1,1);
% L=N+diag(b,1);
L=(1/dx)*(eye(n)+diag(-1*ones(n-1,1),1)); % left derivative matrix

% Da=R*L; %first entry -1
% Db=L*R; % last entry -1
% D=(Da+Db)/2;

D=(R*L+L*R)/2; % second derivative

end

