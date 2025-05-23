clc; clear; close all;


% Define transfer function coefficients
numerator = [10];       
denominator = [1 5];    

% Transfer function creation
sys = tf(numerator, denominator);

t_sim =2; 
% Impulse Response with thicker line
figure;
[y,t]=impulse(sys, t_sim);
plot(t, y, 'b', 'LineWidth',2)
title('Impulse Response of h(t)');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;

% Step Response with thicker line
figure;
[y,t]=step(sys, t_sim);
plot(t, y, 'b', 'LineWidth',2)
title('Step Response of h(t)');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;

% Pole-Zero Map
figure;
pzmap(sys);
title('Pole-Zero Map of h(t)');
grid on;
set(findobj(gca,'Type','Line'),'MarkerSize',14,'LineWidth',2, 'color', 'b'); % Thicker poles and zeros markers

% Display poles and zeros numerically
disp('Poles of Transfer Function:');
pole(sys)

disp('Zeros of Transfer Function:');
zero(sys)
