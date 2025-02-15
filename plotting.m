%% Creating figure for the initial signals (0 m/s vs 2 m/s)
%load('Epoched_signals.mat')
load('ChosenEpochedSignals.mat')
EPO = EPO_copy;
%Ear-EEG channels: 33-46
MyToolboxDir = 'C:\Users\Dell\Desktop\Thesis\bbci_public';
cd(MyToolboxDir);

startup_bbci_toolbox

%%

subNum = 1 ;
session = 1;

epo = EPO_copy{subNum,session};                %number of the session (1: means while staying still)
epo = proc_selectChannels(epo, chan);   %selection only of the ear channels


%% Signals of a participant in a trial every session for one specific participant - Schema 4.4
sub = 8;
y1 = EPO{sub,1};
y2 = EPO{sub,2};
y3 = EPO{sub,3};
y4 = EPO{sub,4};
y5 = EPO{sub,5};

trial = 105;
ear = 14;

fs = 100;  
Ts = 1/fs;                         % sampling rate or frequency
tx =[0: length(y1.x(:,ear))-1]/fs; % Make time axis for EEG signal
tx = tx - 0.2;                     % Transpose the axis in order to recieve the correct dimensions


subplot (411)
plot(tx, (y1.x(:,ear,trial) - mean(y1.x(:,ear,trial))) / std(y1.x(:,ear,trial)) ,'b');
title('Ear-EEG signal: 0 m/s');    
xlabel('Time (s)'), ylabel('Amplitude (μV)'),

subplot (412)
plot(tx, (y3.x(:,ear,trial) - mean(y3.x(:,ear,trial))) / std(y3.x(:,ear,trial)) ,'b');
xlabel('Time (s)'), ylabel('Amplitude (μV)'),
title('Ear-EEG signal: 0.8 m/s');    

subplot (413)
plot(tx, (y4.x(:,ear,trial) - mean(y4.x(:,ear,trial))) / std(y4.x(:,ear,trial)) ,'b');
xlabel('Time (s)'), ylabel('Amplitude (μV)'),
title('Ear-EEG signal: 1.6 m/s');    

subplot (414)
plot(tx, (y5.x(:,ear,trial) - mean(y5.x(:,ear,trial))) / std(y5.x(:,ear,trial)) ,'b');
title('Ear-EEG signal: 2 m/s');    
xlabel('Time (s)'), ylabel('Amplitude (μV)')

sgtitle('Subject 8')



%% Plotting welch power spectral density estimate
% % Subject = 8, 4 sessions, trial = 105
% 
% fs = 100;
% subNum = 2;
% figure;
% 
% for session = 2 : 5
% epo = EPO_copy{subNum,session};
% 
% channel = 1;
% trial = 5;
% x = epo.x(:,channel,trial);       %the samples of the first channel for the first trial
% x = (x(:) - mean(x)) / std(x);
% [px,f] = pwelch(x,fs);
% 
% plot(f/pi, px);  
% %ylabel('Power/frequency')
% %ylabel('Normalized Frequency (x π (rad/sample))')
% xlabel('Normalized Frequency')
% %xlabel('Normalized Frequency (x π (rad/sample))')
% title('Welch Power Spectral Density Estimate')
% hold on;
% end
% legend({'0 m/s','0.8 m/s','1.6 m/s','2 m/s'})


%% Average target / non-target signals (Schema 4.5, 4.6, 4.7)
load("Epoched_signals.mat")               

MyToolboxDir = 'C:\Users\Dell\Desktop\Thesis\bbci_public';
cd(MyToolboxDir);
startup_bbci_toolbox

d = {};
dall = {};
fall = {};

for k = 2 : 4
for j = 1 : 24
fig = figure;
H= plot_channel(EPO{j,k}, 'L10');          %defining the participant and the channel
scenario = k-1;
h = findobj(H.ax,'Type','line'); 
x1 = h(2).XData;  %target
y1 = h(2).YData; 
x2 = h(1).XData;  %non target
y2 = h(1).YData; 
close (fig);

d{j, 1} = x1;
d{j, 2} = y1;
d{j, 3} = x2;
d{j, 4} = y2;

end

dall{k-1,1} = mean(cell2mat(d(:,1)));
dall{k-1,2} = mean(cell2mat(d(:,2)));
dall{k-1,3} = mean(cell2mat(d(:,3)));
dall{k-1,4} = mean(cell2mat(d(:,4)));

end

%17 participants at the last speed
k = 5;
for j = 1 : 17
fig = figure;
H= plot_channel(EPO{j,k}, 'L10');          %defining the participant and the channel
scenario = i-1;
h = findobj(H.ax,'Type','line'); 
x1 = h(2).XData;  %target
y1 = h(2).YData; 
x2 = h(1).XData;  %non target
y2 = h(1).YData; 
close (fig);

d{j, 1} = x1;
d{j, 2} = y1;
d{j, 3} = x2;
d{j, 4} = y2;

dall{k-1,1} = mean(cell2mat(d(:,1)));
dall{k-1,2} = mean(cell2mat(d(:,2)));
dall{k-1,3} = mean(cell2mat(d(:,3)));
dall{k-1,4} = mean(cell2mat(d(:,4)));
end

% Waves of all participants for ERP of target and non target in ear-EEG at L10 for 1 s from −200 to 800ms
% according to the trigger at diferent speeds - Schema 4.5
figure
for i = 1 : 4
subplot(1, 4, i); 
plot(dall{i,1}/1000, dall{i,2} ,'LineWidth', 2); 
legend;

hold on
plot(dall{i,3}/1000, dall{i,4},'LineWidth', 2); 
axis([-0.2 0.8 -4 8])
title('L10');
xlabel('Time (s)'), ylabel('(μV)')
legend('Target','Non-target')
end

% ----------------------- TIME DOMAIN -----------------------
% Creating the figure for the target signals - Schema 4.6
figure;
plot(dall{1,1}/1000, dall{1,2},'LineWidth', 2, 'Color', '#77AC30');  
hold on
%plot(dall{2,1}/1000, dall{2,2},'LineWidth', 2);   
%hold on
%plot(dall{3,1}/1000, dall{3,2},'LineWidth', 2);   
%hold on
plot(dall{4,1}/1000, dall{4,2},'LineWidth', 2,'Color', '#D95319');  

xlabel('Time (s)'), ylabel('Amplitude (uV)')
title('Target signals- Ear-channel: L10')
xline(0.3,'--k', 'LineWidth', 2);
% legend({'0 m/s','0.8 m/s','1.6 m/s','2 m/s'})
legend({'0 m/s','2 m/s'})


% Creating the figure for the non target signals
figure;
plot(dall{1,3}/1000, dall{1,4},'LineWidth', 2,'Color', '#77AC30');  %blue: 0 m/s
%hold on
%plot(dall{2,3}/1000, dall{2,4},'LineWidth', 2);  %red: 0.8 
%hold on
%plot(dall{3,3}/1000, dall{3,4},'LineWidth', 2);  %yellow: 1.6 m/s
hold on
plot(dall{4,3}/1000, dall{4,4},'LineWidth', 2,'Color', '#D95319');  %purple: 2 m/s

xline(0.3,'--k', 'LineWidth', 2);
xlabel('Time (s)'), ylabel('Amplitude (uV)')
title('Non Target signals- Ear-channel: L10')
% legend({'0 m/s','0.8 m/s','1.6 m/s','2 m/s'})
legend({'0 m/s','2 m/s'})



% Power Spectral Density - Target and non-Target signals - Schema 4.7
% ----------------------- FREQUENCY DOMAIN -----------------------

fs = 100;

[px1,f] = pwelch(dall{1,2},fs);
[px2,f] = pwelch(dall{2,2},fs);
[px3,f] = pwelch(dall{3,2},fs);
[px4,f] = pwelch(dall{4,2},fs);

[px5,f] = pwelch(dall{1,4},fs);
[px6,f] = pwelch(dall{2,4},fs);
[px7,f] = pwelch(dall{3,4},fs);
[px8,f] = pwelch(dall{4,4},fs);

% ---------Target Signals---------------
figure
plot(f/pi * fs /2, px1, 'LineWidth', 2);  
% hold on
% plot(f/pi * fs /2, px2, 'LineWidth', 2);  
% hold on
% plot(f/pi * fs /2, px3, 'LineWidth', 2);  
hold on
plot(f/pi * fs /2, px4, 'LineWidth', 2);  

xlabel('Frequency (Hz)'), ylabel('Power (dB)')
title('Target signals- Ear-channel: L10')
% legend({'0 m/s','0.8 m/s','1.6 m/s','2 m/s'})
legend({'0 m/s','2 m/s'})


%------------ Non-Target Signals----------
figure
plot(f/pi * fs /2, px5, 'LineWidth', 2);  
% hold on
% plot(f/pi * fs /2, px6, 'LineWidth', 2);  
% hold on
% plot(f/pi * fs /2, px7, 'LineWidth', 2);  
hold on
plot(f/pi * fs /2, px8, 'LineWidth', 2);  
xlabel('Frequency (Hz)'), ylabel('Power (dB)')

title('Non Target signals- Ear-channel: L10')
% legend({'0 m/s','0.8 m/s','1.6 m/s','2 m/s'})
legend({'0 m/s','2 m/s'})


%% Plotting an ERP (Schema 2.8)

H= plot_channel(EPO{1,1}, 'O1');          %defining the participant and the channel
figure
h = findobj(H.ax,'Type','line'); 
x1 = h(2).XData;  %target
y1 = h(2).YData; 
x2 = h(1).XData;  %non target
y2 = h(1).YData; 
plot(x1,y1,'LineWidth', 2)
title('Ο1')
xlabel('(ms)'), ylabel('(μV)')


%% Problematic recodings - SUB 1 - session 1 - L1  (Schema 5.1)
%211-233 και 237-241
load("Epoched_signals.mat")
MyToolboxDir = 'C:\Users\Dell\Desktop\Thesis\bbci_public';
cd(MyToolboxDir);

startup_bbci_toolbox

subNum = 1;
session = 1;
epo = EPO{subNum,session};                %number of the session (1: means while staying still)
chan = {'L1','L2','L4','L5','L6','L7','L9','L10','R1','R2','R4','R5','R7','R8'}; % ear-EEG
epo = proc_selectChannels(epo, chan);   %selection of the 13 ear channels


% For creating the x - axis
fs = 100;  
Ts = 1/fs;                         % sampling rate or frequency
tx =[0: length(epo.x(:,channel,210))-1]/fs; % Make time axis for EEG signal
tx = tx - 0.2;                     % Transpose the axis in order to recieve the correct dimensions



% ------------ Normal recording --------------
figure
subplot (211)
plot(tx, ((epo.x(:,channel,210) - mean(epo.x(:,channel,210))) / std(epo.x(:,channel,210))) ,'b');

title('Normal recording (trial), Channel: L1')
xlabel('Time(sec)')
ylabel('Amplitude (μV)')

% -------- Problematic recordings ------------
subplot (212)
plot(tx, ((epo.x(:,channel,211) - mean(epo.x(:,channel,211))) / std(epo.x(:,channel,211))));
hold on;
plot(tx, ((epo.x(:,channel,212) - mean(epo.x(:,channel,212))) / std(epo.x(:,channel,212))));
hold on;
plot(tx, ((epo.x(:,channel,213) - mean(epo.x(:,channel,213))) / std(epo.x(:,channel,213))));
hold on;
plot(tx, ((epo.x(:,channel,216) - mean(epo.x(:,channel,216))) / std(epo.x(:,channel,216))));
hold on;
plot(tx, ((epo.x(:,channel,237) - mean(epo.x(:,channel,237))) / std(epo.x(:,channel,237))));
hold on;
plot(tx, ((epo.x(:,channel,238) - mean(epo.x(:,channel,238))) / std(epo.x(:,channel,238))));
hold on;
plot(tx, ((epo.x(:,channel,239) - mean(epo.x(:,channel,239))) / std(epo.x(:,channel,239))));

title('Problematic recordings(trials), Channel: L1')
xlabel('Time(sec)')
ylabel('Amplitude (μV)')


% % New figure
% subNum = 1;
% session = 1;
% epo = EPO{subNum,session};                %number of the session (1: means while staying still)
% chan = {'L1','L2','L4','L5','L6','L7','L9','L10','R1','R2','R4','R5','R7','R8'}; % ear-EEG
% epo = proc_selectChannels(epo, chan);   %selection of the 13 ear channels
% figure
% subplot (211)
% plot(epo.x(:,channel,210),'b')
% title('Normal recording (trial), Channel: L1, Speed: 0 m/s')
% xlabel('Samples')
% ylabel('Amplitude (μV)')
% 
% session = 5;
% epo = EPO{subNum,session};                %number of the session (1: means while staying still)
% chan = {'L1','L2','L4','L5','L6','L7','L9','L10','R1','R2','R4','R5','R7','R8'}; % ear-EEG
% epo = proc_selectChannels(epo, chan);   %selection of the 13 ear channels
% subplot (212)
% plot(epo.x(:,channel,210),'b')
% title('Normal recording (trial), Channel: L1, Speed: 2 m/s')
% xlabel('Samples')
% ylabel('Amplitude (μV)')




%% Plotting SWD

load('ChosenEpochedSignals.mat')
addpath 'C:\Users\Dell\Desktop\Thesis\SWD V4\Source v4'

subNum = 1;
session = 1;
epo = EPO_copy{subNum,session};

channel = 1;
trial = 1;
x = epo.x(:,channel,trial);       %the samples of the first channel for the first trial
x = (x(:) - mean(x)) / std(x);
% Run SWD
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

% Sorting
cmps_srtd = cmps;
residual  = cmps(:, end);
%residual is the last component of the SWD - the remaining

NoC = size(cmps, 2)-1;

%Plotting
fs = 100;
[pxx,f] = pwelch(x,fs);
plot(f/pi,pxx)


figure; 
subplot(2, 1, 1); plot(x); title('initial signal time-domain');
subplot(2, 1, 2); plot(w/pi, Px); title('initial signal frequency-domain');


figure; 
subplot(2, 1, 1); plot(cmps_srtd); title('cmps time-domain');
subplot(2, 1, 2); plot(w/pi, Pcmps);   title('cmps frequency-domain');

figure;
NoC = size(cmps, 2)-1;
for i = 1:NoC
   
    subplot(NoC, 2, 2*(i-1)+1); plot(cmps_srtd(:, i));
    subplot(NoC, 2, 2*(i-1)+2); plot(w/pi, Pcmps(:, i));
    
end

%% Plotting welch power spectral density estimate
% Subject = 14, 4 sessions, trial = 5

fs = 100;
subNum = 14;
figure;

for session = 2 : 5;
epo = EPO_copy{subNum,session};

channel = 1;
trial = 5;
x = epo.x(:,channel,trial);       %the samples of the first channel for the first trial
x = (x(:) - mean(x)) / std(x);
[px,f] = pwelch(x,fs);

plot(f/pi, px);  
ylabel('Power/frequency (dB/(rad/samples)')
xlabel('Normalized Frequency (x π (rad/sample))')
title('Welch Power Spectral Density Estimate')
hold on;
end
legend({'0 m/s','0.8 m/s','1.6 m/s','2 m/s'})

%% Applying SWD





 