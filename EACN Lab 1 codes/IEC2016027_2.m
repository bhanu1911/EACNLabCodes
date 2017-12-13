f=1;
t=-2:0.01:2;
UNITSTEP = t>=0;
y=t.*UNITSTEP;
plot(t,y);