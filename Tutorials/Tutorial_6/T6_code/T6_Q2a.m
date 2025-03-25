clc; clear; close all; 

t_sim =5; 

% Define transfer function coefficients
numerator = [2 -1];                    % Numerator: 2s - 1
denominator = [1 -1 -2];      % Denominator: (s+1)(s-2) = s^2 - s - 2

% Create transfer function
sys = tf(numerator, denominator);

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
