num=9;
den=[1 2 9];
G=tf(num,den);
wn=3;
z=1/3;
T=8/(wn*z);
[s,t]=step(G,T);
plot(t,s)
grid on
tp=pi/(sqrt(1-z^2)*wn);
peak=1+exp(-pi*z/sqrt(1-z*z));
hold on
plot(t,ones(size(s)),'r')
plot([tp tp],[0 peak],'g')
plot([0 tp],[peak peak],'g')
xlabel('t')
ylabel('s(t)')
title('Step Response')
text(tp,-0.04,'tp')
text(tp,peak+0.04,'OS')
hold off