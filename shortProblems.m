% solutions for short problems

a=10; %problem 1 start
b=2.5*10^23;
c=2+3*1i;
d=exp(1j*2*pi/3); % problem 1 end
aVec=[3.14 15 9 26]; %problem 2 start
bVec=[2.71;8;28;182];
cVec=5:-0.2:-5;
dVec=logspace(1,10,100);
eVec='Hello';%problem 2 end
onesMat=ones(9); %problem 3 start
aMat=onesMat+1;
q=[1 2 3 4 5 4 3 2 1];
bMat=diag(q);
w=1:100;
cMat=reshape(w,[10,10]);
dMat=nan(3,4);
eMat=[13 -1 5;-22 10 -87];
fMat=-3+(3+3)*rand(5,3); %problem 3 end
x=1/(1+exp(-(a-15)/6)); %problem 4 start
y=(sqrt(a)+(b^(1/21)))^pi;%
z=(log(real((c+d)*(c-d))*sin(a*pi/3)))/(c*conj(c)); %problem 4 end
xVec=(1/sqrt(2*pi*(2.5^2)))*exp((-cVec.^2)/(2*(2.5^2)));%problem 5 start
yVec=sqrt(((aVec').^2)+(bVec.^2));
zVec=log10(1./dVec); % problem 5 end
xMat=(aVec*bVec)*aMat.^2;% problem 6 start
yMat=bVec*aVec;
zMat=det(cMat)*((aMat*bMat)');% problem 6 end
cSum=sum(cMat); % problem 7 starts
eMean=mean(eMat,2);
eMat(1,:)=ones(1,3);
cSub=cMat(2:9,2:9);
lin=[1:20];
lin(2:2:end)=-1*lin(2:2:end);
r=rand(1,5);
rfind=find(r<0.5);
r(rfind)=0; % problem 7 ends








