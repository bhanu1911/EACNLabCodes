F2=2;
F1=10;
A=5;
t=0:0.001:1;
c=A.*sawtooth(2*pi*F1*t);%Carrier sawtooth
subplot(3,1,1);
plot(t,c,"linewidth",2);
xlabel("time");
ylabel("Amplitude");
title("Carrier sawtooth wave");
grid on;
m=0.75*A.*sin(2*pi*F2*t);%Message amplitude must be less than Sawtooth
subplot(3,1,2);
plot(t,m,"linewidth",2);
xlabel("Time");
ylabel("Amplitude");
title("Message Signal");
grid on;
n=length(c);%Length of carrier sawtooth is stored to ‘n’
for i=1:n%Comparing Message and Sawtooth amplitudes
if (m(i)>=c(i))
    pwm(i)=1;
else
    pwm(i)=0;
end
end
subplot(3,1,3);
plot(t,pwm,"linewidth",2);
xlabel("Time");
ylabel("Amplitude");
title("plot of PWM");
axis([0 1 0 2]);