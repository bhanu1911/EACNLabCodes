t = [-10:0.01:10];
yf = (t >= -0.5) & (t <= 0.5);

f = [-10:0.01:10];
omega = (2*pi).*f;
Yf = trapz(t, yf.*exp(omega.*t));
plot(f,Yf)