
% M-code to calculate and plot the power supplied by the

% generator as a function of torque angle assuming that the

% field current has been adjusted to supply rated voltage at

% full load conditions.

% Define values for this generator

EA = 2814; % Internal gen voltage (V)

VP = 1850; % Phase voltage (V)

XS = 15.7; % XS (ohms)

% Calculate power vs torque angle

delta = 0:0.1:90;

power = 3 * VP * EA / XS * sin(delta * pi/180);

% Plot the power vs torque angle

figure(1);

plot(delta,power/1000,'b-','LineWidth',2.0);

title ('\bfGenerator Power vs Torque Angle \delta');

xlabel ('\bfTorque Angle (deg)');

ylabel ('\bfOutput Power (kW)');

grid on;

hold off;
