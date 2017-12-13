f=1;
t=-2:0.01:2;
UNITSTEP = t>=0;
y=sin(2*pi*f*t);
plot(t,y);