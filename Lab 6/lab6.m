a = 4
f = 3 
t = 0:0.05:10; % for a total of 16 samples
x1 = 1; %generation of an impulse signal
x2 = a*sin(2*pi*f*t); %generation of sine wave
y = x1.*x2; %modulation step
subplot(3,1,1); %for impulse signal plot
stem(x1);
title('Impulse Signal');
xlabel('Time');
ylabel('Amplitude ');

subplot(3,1,2) %for sine wave plot
plot(t,x2); 
title('Sine Wave');
xlabel('Time ');
ylabel('Amplitude ');

subplot(3,1,3) %for PAM wave plot
stem(t,y);
title('PAM Wave');
xlabel('Time');
ylabel('Amplitude');
