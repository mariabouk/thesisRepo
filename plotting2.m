%% Creating the figures 5.4, 5.6, 5.7

%load('ChosenEpochedSignals.mat')
EPO = EPO_copy;

addpath 'C:\Users\Dell\Desktop\Thesis\SWD V4\Source v4'

%close all; clear; clc;

%% Input signal

subNum = 1;

% ----- Defining the session -----
session = 2;
% session = 5;


% ----- Defining the channel : L1 -----
channel = 1;              
trial = 10;


epo = EPO{subNum, session};
x = epo.x(:,channel,trial);  

% ----- First figure -----  Schema 5.4
figure;
subplot(3, 1, 1); plot(x); title('initial signal time-domain');

t = epo.t';
x = (x(:) - mean(x)) / std(x);  % the normalization is helpful


%% Run SWD
L = length(x);
min_peak      = 0.01;        % This parameter determines how many cmps will be extracted, the less min_peak the more components. It also detemines the execution time.
component_std = 0.1;         % This parameter must be less than 0.2. Values smaller than 0.001 makes no difference in the most cases.
welch_window  = round(0.5*L); % This parameter determines how fine or coarse will be spectrum when it calculated in the algorithm. It determines how coarse the extracted components will be.

param_struct  = struct('P_th',         min_peak, ...
                       'StD_th',       component_std, ...
                       'Welch_window', welch_window);

% With this parameter you can control the internal clustering the algorithm does. 
% If it is very small, no clustering happens. Large values (>0.4) may
% cluster all components.
param_struct.clustering_factor = 0.15;

[cmps, residal] = SWD_V4_2(x, param_struct);

%% Sorting

cmps_srtd = cmps;
residual  = cmps(:, end);
%residual is the last component of the SWD - the remaining

%% Plotting results

[Px, w] = pwelch(x);
Pcmps   = pwelch(cmps_srtd);

fs = 100;
[pxx,f] = pwelch(x,fs);
%plot(f/pi,pxx)

subplot(3, 1, 2); plot(x); title('normalized initial signal time-domain');
subplot(3, 1, 3); plot(w/pi, Px); title('initial signal frequency-domain');
sgtitle('Moving speed: 0 m/s')   
%sgtitle('Moving speed: 2 m/s')



% ----- Second figure ----- Schema 5.6
figure;
NoC = size(cmps, 2)-1;
for i = 1:NoC
   
    subplot(NoC, 2, 2*(i-1)+1); plot(cmps_srtd(:, i));
    subplot(NoC, 2, 2*(i-1)+2); plot(w/pi, Pcmps(:, i));
    
end

sgtitle('Moving speed: 0 m/s')
%sgtitle('Moving speed: 2 m/s')


%% Separation in 4 categories 

wpi = w/pi;

P1 = zeros(size(w));
P2 = zeros(size(w));
P3 = zeros(size(w));
P4 = zeros(size(w));

for i = 1 : NoC
    [max_value, pos] = max(Pcmps(:,i));
    mainfrequency = wpi(pos);
    if(mainfrequency <= 0.25)
        P1 = P1 + Pcmps(:,i);
    elseif(mainfrequency <= 0.5)
        P2 = P2 + Pcmps(:,i);
    elseif(mainfrequency <= 0.75)
        P3 = P3 + Pcmps(:,i);
    else
        P4 = P4 + Pcmps(:,i);
    end

end

% ----- Third figure ----- Schema 5.7
figure; 
subplot(4, 1, 1); plot(w/pi, P1); title('First Group of OMs - frequency domain');
subplot(4, 1, 2); plot(w/pi, P2); title('Second Group of OMs - frequency domain');
subplot(4, 1, 3); plot(w/pi, P3); title('Third Group of OMs - frequency domain');
subplot(4, 1, 4); plot(w/pi, P4); title('Fourth Group of OMs - frequency domain');

sgtitle('Moving speed: 0 m/s')  
%sgtitle('Moving speed: 2 m/s')
