t=-2:0.0001:2

x=zeros(size(t));
h=zeros(size(t));
x(t>=-1 & t<=1)=1;
subplot(3,2,1);
plot(t,x);
xlabel('time');
ylabel('x(t)');
title('IEC2015084');

h(t>=-1 & t<=1)=1;
subplot(3,2,2);
plot(t,h);
xlabel('time');
ylabel('h(t)');
title('IEC2016027');

y=conv(x,h);
tt=t(1)+t(1) : 0.0001 : t(end)+t(end);
subplot(3,2,3);
plot(tt,y*0.0001);
xlabel('time');
ylabel('y(t)');
title('IEC2016027')

x2=x+x;
ya=conv(x2,h);
tt=t(1)+t(1) : 0.0001 : t(end)+t(end);
subplot(3,2,4);
plot(tt,ya*0.0001);
yb=y+y;
hold on;
plot(tt,yb*0.0001,'r');
xlabel('time');
ylabel('addition property');
title('IEC2016027');

xs=2*x;
ya=conv(xs,h);
tt=t(1)+t(1) : 0.0001 : t(end)+t(end);
subplot(3,2,5);
plot(tt,ya*0.0001);
yb=2*y;
hold on;
plot(tt,yb*0.0001,'r');
xlabel('time');
ylabel('scaling property');
title('IEC2016027')

t=-1.2:0.0001:1.2;
x1=zeros(size(t));
x1(t>=-0.8 & t<=1.2)=1;
y1=conv(x1,h);
tt=t(1)+t(1) : 0.0001 : t(end)+t(end);
subplot(3,2,6);
plot((1:length(y1))*0.0001,y1*0.0001);
hold on;
pad=zeros(1,0.2/0.0001);
y2=[pad y];
plot((1:length(y2))*0.0001,y2*0.0001,'b');
xlabel('time');
ylabel('time variance property');
title('IEC2016027')
