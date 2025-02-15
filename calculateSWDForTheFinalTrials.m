%% Loading the final EpochedSignals
load('ChosenEpochedSignals.mat')
addpath 'C:\Users\Dell\Desktop\Thesis\SWD V4\Source v4'

%For skipping and more
%1,2,3,4,5,7,8,6,11,45,56,57,78,100,126,127,130,146,147,157,174,177,179,181,184,206,214,230,253,280
%Session2 - sub = 20

%% Calculation of the final format of the signals after applying SWD and dividing them 
%% into 4 different frequency bands

% ------Trying at first only for the subject 1 ------


PCMPS = [];
nonempty = 0;

subNum = 1;

for session = 2 : 5
%session = 4;

epo = EPO_copy{subNum,session};

%a = epo.x(:,11,70);

for channel = 1 : 14       %in order to contain all the ear channels it has to be from 1 to 14
%channel = 12;
session_length = length(epo.x(1,1, :));

skipNum = [];

counter = 0;
for trial =  1: session_length
%trial 
if ~ismember(trial,skipNum) 

counter = counter + 1;
x = epo.x(:,channel,trial);       %the samples of the first channel for the first trial
x = (x(:) - mean(x)) / std(x);
nonempty = nonempty +1;
%figure; plot(t,x)
%title("Initial signal - Time domain")


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


NoC = size(cmps, 2)-1;

%% Division of the OMs occurred by the Decomposition to 4 frequency bands
%mainFrequencies = [];
wpi = w/pi;
Pcmp_final = [];
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

Pcmp_final(:,1) = P1;
Pcmp_final(:,2) = P2;
Pcmp_final(:,3) = P3;
Pcmp_final(:,4) = P4;

PCMPS{channel,counter} = Pcmp_final;
       
     
end
end


channel
end

PCMPS_subSes = [];
sum = 0;
table=cell2table(PCMPS);
for trial = 1 : counter
    if (~isempty(PCMPS{1,trial}))
        sum = sum +1;
        PCMPS_subSes{sum} = table{:,trial};
    end
end


PCMPS_subSes_{session - 1} = PCMPS_subSes;
session
end

PCMPS_sub8exceptSes1 = PCMPS_subSes_;
% PCMPS_sub11ses4 = PCMPS_subSes_(4);
% PCMPS_sub11ses5 = PCMPS_subSes_(5);

% PCMPS_sub11ses3ses4ses5{1} = PCMPS_sub11ses3;
% PCMPS_sub11ses3ses4ses5{2} = PCMPS_sub11ses4;
% PCMPS_sub11ses3ses4ses5{3} = PCMPS_sub11ses5;
% clearvars -except PCMPS_sub8exceptSes1; 

