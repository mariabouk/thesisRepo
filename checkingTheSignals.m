%% Loading the data
load('Epoched_signals.mat')

% start up the bbci_toolbox
MyToolboxDir = 'C:\Users\Dell\Desktop\Thesis\bbci_public';
cd(MyToolboxDir);
startup_bbci_toolbox

% ear-EEG Channels
chan = {'L1','L2','L4','L5','L6','L7','L9','L10','R1','R2','R4','R5','R7','R8'}; 

%% Problematic Records occured after using a check for the standard deviation
problematicRecords = [];
problematicRecords_all = [];

for subNum = 15 : 24
%subNum = 1;                         %number of the subject


for session = 1 : 5
%session = 1;

if(~isempty(EPO{subNum,session}))

epo = EPO{subNum,session};                %number of the session (1: means while staying still)
epo = proc_selectChannels(epo, chan);   %selection only of the ear channels

for channel = 1: 14
%channel = 1;
%channel
trial_length = 300;%length(epo.x(:,channel,:));
standardDeviationValues = [];
for trial = 1 : trial_length  
    %in order to contain all the trials it has to be from 1 to 300
    x = epo.x(:,channel,trial);       %the samples of the first channel for the first trial
    %x = (x(:) - mean(x)) / std(x);
%     subplot(6, 1,i); plot(x);
%     hold on
    standardDeviationValues(trial) = std(x);
end


stdMax = [];
j = 0;
stdSorted = sort(standardDeviationValues);
m = mean(stdSorted(:,100));
for i = 1:trial_length
    if(abs(standardDeviationValues(i))> 3*m)   %an valw 15 ta anixnevei ola
        j = j+1;
        stdMax(j) = i;               
    end
end
%stdMax
%PCMPS{channel,trial} = Pcmp_final;
problematicRecords{session,channel} = stdMax;

end
end
end

problematicRecords_all{subNum} = problematicRecords;
problematicRecords = [];
end


%% Problematic Records occured after using Density-based spatial clustering of applications with noise

problematicRecords_2 = [];
problematicRecords_all_2 = [];

for subNum = 1 : 24
%subNum = 1;                         %number of the subject


for session = 1 : 5
%session = 1;

if(~isempty(EPO{subNum,session}))

epo = EPO{subNum,session};                %number of the session (1: means while staying still)
epo = proc_selectChannels(epo, chan);   %selection only of the ear channels
 
for channel = 1: 14
%channel = 1;

session_length = length(epo.x(:,1, :));


x = epo.x(:,channel,:);       %the samples of the first channel for the first trial
x =reshape(x,[100,session_length]);
idx = dbscan(x', 500 , 2);    %300 - gives good results

wrong = [];

sum_1 = 0;               % = 1
sum_2 = 0;               % = -1
sum_3 = 0;               % = 2
sum_4 = 0;               % = -2
sum_5 = 0; 
sum_6 = 0; 

for j = 1: session_length
    if(idx(j)==1)
        sum_1 = sum_1 + 1;
    elseif(idx(j)==-1)
        sum_2 = sum_2  +1;
    elseif(idx(j)==2)
        sum_3 = sum_3  +1;
    elseif(idx(j)==-2)
        sum_4 = sum_4  +1;
    end
end
sum = [sum_1,sum_2,sum_3,sum_4];
sum_copy = sum;
sort_sum = sort(sum_copy);

more = sort_sum(length(sort_sum));

value = 0;
if (sum(1) == more)
    value = 1;
elseif(sum(2) == more)
    value = -1;
elseif(sum(3) == more)
    value = 2;
elseif(sum(4) == more)
    value = -2;
end

k = 0;
for i = 1: session_length
    if(idx(i) ~= value)
        k = k+1;
        wrong(k) = i;
    end
end

problematicRecords_2{session,channel} = wrong;


end
end
end

problematicRecords_all_2_{subNum} = problematicRecords_2;
problematicRecords_2 = [];
end







