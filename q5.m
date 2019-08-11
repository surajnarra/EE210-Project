[y,Fs] = audioread('tbbt_sh.m4a');
xd=y(:,1).';  %%using first channel
%sound(xd.',Fs);  %%original sound
M=7;
p=0.5;
xd1=xd;
xd1=filter1(xd1,M);
xd2=xd;
xd2=filter2(xd2,M);
xd3=xd;
xd3= filter3(xd3,p);  %%prominent disturbance in back_gorund
sound(xd1.',Fs);
%%---------------
%%filter1 :
%%as M increases, filter1 decreases noise in background ,amplitude
%%is decreased
%%----------------
%%filter2:
% as M increases, filter2 also decreases noise in background ,amplitude
% is decreased
% filter2 not as good as filter1
%%----------------
% filter3 is the  least best one, varied p from 0.1 to 0.9, but still
% background noise was being observed, amplitude almost same
