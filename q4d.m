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
 subplot(3,2,1);
 plot(y,x);
 title('clean wave');
%%--------------------------------------------------<<<q1
sx=numel(x);
sigma=0.2;
xd=x+sigma*(rand(1,sx)-0.5);
subplot(3,2,2);
plot(y,xd);
tf=['corrupted sigma=',num2str(sigma)];
title('corrupted');
%%--------------------------------------------------<<<q2
P=[0.3,0.5,0.7,0.9];
fn=3;
for p=P
    xd1=xd;
    xd1=filter3(xd1,p);
     subplot(3,2,fn);
     plot(y,xd1);
     tf=['filtered p=',num2str(p),' sigma=',num2str(sigma)];
     title(tf);
    fn=fn+1;
end


%%here, as p increases, the graph is getting smoother, the amplitude 
%%is almost same, peak sharpness is decreasing
%%this filter is not as good as f1 and f2
%%--------------------------------------------


