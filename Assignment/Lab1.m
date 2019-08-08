iex = 1; % Select example

%% EXAMPLE 1: Projectile
if iex ==1
 t = linspace(0,100,1000); % in seconds
 v0 = 500; % in m/s
 theta = 45; % in degre

 % constant
 g = 9.8; % m/s2 (gravity constant)

 % horizontal and vertical displacements
 x = v0 * t * cosd(theta);
 y = v0 * t * sind(theta) - 0.5 * g * t.^2;
 % plot
 %figure
 %plot(x,y)
 %xlabel('x')
 %ylabel('y')

 % LAB ASSIGNMENT 1
 % %Note that x, y has three variable (v0, t, theta)
 % 1. Make inline functions for x and y
 % 2. Plot for theta = 30, 45, 80 degrees

 % Inline Function
 x = inline('v0 * t * cosd(theta)', 'v0', 't', 'theta')
 y = inline('v0 * t * sind(theta) - .5 * 9.8 * t.^2', 'v0', 't', 'theta')


 subplot(1,3,1)
 plot(x(v0,t,30),y(v0,t,30))
 xlabel('x')
 ylabel('y')
 title('Theta = 30')
 subplot(1,3,2)
 plot(x(v0,t,45),y(v0,t,45))
 xlabel('x')
 ylabel('y')
 title('Theta = 45')
 subplot(1,3,3)
 plot(x(v0,t,80),y(v0,t,80))
 xlabel('x')
 ylabel('y')
 title('Theta = 80')

 % Finding roots for theta = 30

 x30 = x(v0,t,30);
 k = find(y(v0,t,30)<0,1);
 % Range of x for y = 0 for theta = 30
 result = x30(k-1)

end

%% EXAMPLE 2: Read 1D waveform data
if iex == 2
 ddir = 'data\';
 fname = 'XZ_GOAT_BHZ.dat';

 fid = fopen(strcat(ddir,fname));
 data = textscan(fid,'%f');
 %data2 = dlmread(strcat(ddir,fname));

 % plot
 figure
 plot(data{1})

 % Add information from the header
 % Standard seismic waveform readers (obspy, SAC) will read this
information
 % direclty

 x = min(data{1});
 y = max(data{1});

 % LAB ASSIGNMENT 2
 % Find x where y is minimum and maximum

 k1 = find(data{1}==x);
 k2 = find(data{1}==y);

 fprintf('%Min Value = .\n',k1);
 fprintf('%Max Value = .\n',k2);

end