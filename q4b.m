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
sx=numel(x);
%%--------------------------------------------------<<<
SV=[0.8,1.8,2.8];
M=5;
fn=1;
for sigma=SV   
    xd1=x+sigma*(rand(1,sx)-0.5);
    subplot(3,2,fn);
    plot(y,xd1);
    tf=['corrupted, sigma=',num2str(sigma)];
    title(tf);
    fn=fn+1;
    %%--------------------------------------------------
    xd1=filter1(xd1,M);
    subplot(3,2,fn);
    plot(y,xd1);
    tf=['filtered M=',num2str(M),' sigma=',num2str(sigma)];
    title(tf);
    fn=fn+1;
end

%%as sigma increases, filtering quality decreases