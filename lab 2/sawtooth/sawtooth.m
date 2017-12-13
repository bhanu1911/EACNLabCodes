syms t;

x = [-1:0.01:2];

y = 0;

a0 = (1/2).*( int(t,t,0,1) + int(t-1,t,1,2));

for n = 1:1:188
    a_n = int (t.*cos(n*pi*t),0,1)+ int ((t-1).*cos(n*pi*t),1,2) ;
    b_n = int (t.*sin(n*pi*t),0,1)+ int ((t-1).*sin(n*pi*t),1,2);
    a_n = a_n .* cos(n*pi*x);
    b_n = b_n .* sin(n*pi*x);
    y = y + a_n + b_n;
end

y = y + a0 - 1 ;

plot(x,y)