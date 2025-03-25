clc; clear; close all;

t_sim = 30;

% Transfer function coefficients
numerator = [1 9];            % s + 9
denominator = [1 0 9];        % s^2 + 9

% Create transfer function
sys = tf(numerator, denominator);

t_sim =30; 
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
