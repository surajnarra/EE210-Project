a=8;
b=9;
w1=0.2;
w2=0.3;
w=0.1;
ts=2*pi/(5*w2);  %% sampling rate
ns=5*w2/w; %%no of samples per cycle
x=zeros(1,10*ns);
y=ts*[1:10*ns];
x=a*cos(w1*y)+b*cos(w2*y);
 subplot(3,1,1);
 plot(y,x);
 title('clean wave');
%%--------------------------------------------------<<<q1
sx=numel(x);
sigma=0.2;
xd=x+sigma*(rand(1,sx)-0.5);
subplot(3,1,2);
plot(y,xd);
tf=['corrupted sigma=',num2str(sigma)];
title('corrupted');
%%--------------------------------------------------<<<q2
xd1=xd;
M=5;
xd1=filter1(xd1,M);
subplot(3,1,3);
plot(y,xd1);
tf=['filtered M=',num2str(M),' sigma=',num2str(sigma)];
title(tf);