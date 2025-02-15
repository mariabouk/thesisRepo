% Loading the data
load("Epoched_signals.mat")

% EPO_copy is going to obtain the channels for non-problematic trials
EPO_copy = EPO;

% ear-EEG Channels
chan = {'L1','L2','L4','L5','L6','L7','L9','L10','R1','R2','R4','R5','R7','R8'}; 

% Starting up the tooolbox
MyToolboxDir = 'C:\Users\Dell\Desktop\Thesis\bbci_public';
cd(MyToolboxDir);
%startup_public_bbci('DataDir', MyDataDir);

startup_bbci_toolbox


%% Subject 1
subNum = 1;
%because of channel 1
badTrial_1 = [211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,238,239,240];
badTrial_1 = sort(badTrial_1);
%because of channel 2
badTrial_2 = [49,50,57,59,60,61,65,66,67,68,69,70,71,72,73,74,79,80,81,82,83,84,85,86,87,88,89,96,97,98,99,100,211,212,213,214,215,216,217,218,220,221,222,231,232,233,259,260,261,262,263,269,270];
badTrial_2 = sort(badTrial_2);

badTrial_3 = [8,9,10];
badTrial_3 = sort(badTrial_3);

badTrial_4 = [41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,100];
badTrial_4 = sort(badTrial_4);

badTrial_5 = [];
badTrial_5 = sort(badTrial_5);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 2----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
     %val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end

% ----Session 5----

epoCopySession5 = EPO_copy{subNum,5};
epoCopySession5 = proc_selectChannels(epoCopySession5, chan);   %selection only of the ear channels

% for i = 1 : length(badTrial_5)
%     val = badTrial_5(length(badTrial_5)-(i-1));
% %     val
%     epoCopySession5.x(:,:,val) = [];
% end

% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;
EPO_copy{subNum,5} = epoCopySession5;


%% Subject 2

subNum = 2;
%because of channel 1
badTrial_1 = [];
badTrial_2 = [152,181];
badTrial_3 = [];
badTrial_4 = [87,93,94,109,146,182,257];
badTrial_5 = [214,255,256,262,265,267,268,270,271,272,274,275,277,278,279,280,282,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300];

badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);
badTrial_5 = sort(badTrial_5);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 2----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end

% ----Session 5----

epoCopySession5 = EPO_copy{subNum,5};
epoCopySession5 = proc_selectChannels(epoCopySession5, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_5)
    val = badTrial_5(length(badTrial_5)-(i-1));
%     val
    epoCopySession5.x(:,:,val) = [];
end

% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;
EPO_copy{subNum,5} = epoCopySession5;

%% Subject 3

subNum = 3;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [];
badTrial_4 = [];
badTrial_5 = [135,198,225,249,230,267,293,118,133,198,201,225,230,233,236,243,251,260,261,272,273,274,278,289,294,296];

badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);
badTrial_5 = sort(badTrial_5);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 2----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end

% ----Session 5----

epoCopySession5 = EPO_copy{subNum,5};
epoCopySession5 = proc_selectChannels(epoCopySession5, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_5)
    val = badTrial_5(length(badTrial_5)-(i-1));
%     val
    epoCopySession5.x(:,:,val) = [];
end

% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;
EPO_copy{subNum,5} = epoCopySession5;

%% Subject 4

subNum = 4;

%the existense of the channel 2 creates many problems
badTrial_1 = [40,44,58,59,60,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,91,92,93,94,95,96,97,98,99,100];
badTrial_2 = [209,210,211,212,213,214,215,216,217,218,219,220,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,256,257,258,259,260];
badTrial_3 = [48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,87,99,100,113,114,131,132,133,134,135,136,137,140,141,142,152,153,154,155,190];
badTrial_4 = [213];
badTrial_5 = [13,21,31,61,62,65,69,70,73,78,80,84,89,96,97,130,182,192,211,215,217,218,226,229,232,233,234,235,237,238,243,245,247,248,249,253,254,255,256,257,258,259,260,262,263,264,265,266,267,268,269,276,277,280,282,283,284,286,287,288,289,290,291,294,295];

badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);
badTrial_5 = sort(badTrial_5);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 2----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end

% ----Session 5----

epoCopySession5 = EPO_copy{subNum,5};
epoCopySession5 = proc_selectChannels(epoCopySession5, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_5)
    val = badTrial_5(length(badTrial_5)-(i-1));
%     val
    epoCopySession5.x(:,:,val) = [];
end

% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;
EPO_copy{subNum,5} = epoCopySession5;

%% Subject 5

subNum = 5;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [];
badTrial_4 = [213];
badTrial_5 = [5,6,7,8,9,10,222];

badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);
badTrial_5 = sort(badTrial_5);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 2----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end

% ----Session 5----

epoCopySession5 = EPO_copy{subNum,5};
epoCopySession5 = proc_selectChannels(epoCopySession5, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_5)
    val = badTrial_5(length(badTrial_5)-(i-1));
%     val
    epoCopySession5.x(:,:,val) = [];
end

% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;
EPO_copy{subNum,5} = epoCopySession5;

%% Subject 6

subNum = 6;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [];
badTrial_4 = [];
badTrial_5 = [109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,129,130,162,171,173,176,181,182,184,191,197,206,207,212,213,216,218,219,226,227,228,230,231,232,233,234,235,236,237,238,239,240,243,245,248,249,250,251,252,254,255,257,260,262,263,265,267,268,270,271,272,273,275,276,279,282,292,293,297,298];

badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);
badTrial_5 = sort(badTrial_5);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 2----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end

% ----Session 5----

epoCopySession5 = EPO_copy{subNum,5};
epoCopySession5 = proc_selectChannels(epoCopySession5, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_5)
    val = badTrial_5(length(badTrial_5)-(i-1));
%     val
    epoCopySession5.x(:,:,val) = [];
end

% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;
EPO_copy{subNum,5} = epoCopySession5;

%% Subject 7

subNum = 7;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [213];
badTrial_4 = [137];
badTrial_5 = [191];

badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);
badTrial_5 = sort(badTrial_5);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 2----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end

% ----Session 5----

epoCopySession5 = EPO_copy{subNum,5};
epoCopySession5 = proc_selectChannels(epoCopySession5, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_5)
    val = badTrial_5(length(badTrial_5)-(i-1));
%     val
    epoCopySession5.x(:,:,val) = [];
end

% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;
EPO_copy{subNum,5} = epoCopySession5;

%% Subject 8

subNum = 8;
%the channel 2 creates the problems
badTrial_1 = [];
badTrial_2 = [2,191,192,193,195,196,241,242,246,247,248,249,251,252,253,254,255,256,281];
badTrial_3 = [1,2,4,5,6,7,8,10,12,13,45,111,112,113,115,208,209,210,217,218,219,220,222,223,224,225,226,227];
badTrial_4 = [1,2,3,8,9,34,35,36,132,133,134,136,137,144,145,146,152,153,155,156,157,177,229,230,295,296,298,300];
badTrial_5 = [];


badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);
badTrial_5 = sort(badTrial_5);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 2----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end

% ----Session 5----

epoCopySession5 = EPO_copy{subNum,5};
epoCopySession5 = proc_selectChannels(epoCopySession5, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_5)
    val = badTrial_5(length(badTrial_5)-(i-1));
%     val
    epoCopySession5.x(:,:,val) = [];
end

% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;
EPO_copy{subNum,5} = epoCopySession5;

%% Subject 9

subNum = 9;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [237,238];
badTrial_4 = [];
badTrial_5 = [23,63,237];


badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);
badTrial_5 = sort(badTrial_5);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 2----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end

% ----Session 5----

epoCopySession5 = EPO_copy{subNum,5};
epoCopySession5 = proc_selectChannels(epoCopySession5, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_5)
    val = badTrial_5(length(badTrial_5)-(i-1));
%     val
    epoCopySession5.x(:,:,val) = [];
end

% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;
EPO_copy{subNum,5} = epoCopySession5;

%% Subject 10

subNum = 10;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [];
badTrial_4 = [];
badTrial_5 = [1,2,3,5,7,8,9,11,12,13,16,21,22,23,24,25,26,28,30,36,37,64,79,98,102,116,124,126,127,128,154,162,163,186,208,229,250,258,266,268,277,279,282,290,291,292,298,300];


badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);
badTrial_5 = sort(badTrial_5);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 2----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end

% ----Session 5----

epoCopySession5 = EPO_copy{subNum,5};
epoCopySession5 = proc_selectChannels(epoCopySession5, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_5)
    val = badTrial_5(length(badTrial_5)-(i-1));
%     val
    epoCopySession5.x(:,:,val) = [];
end

% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;
EPO_copy{subNum,5} = epoCopySession5;

%% Subject 11

subNum = 11;

badTrial_1 = [104,105,264,275,279,286,297];
badTrial_2 = [];
badTrial_3 = [145,149,155];
badTrial_4 = [187];
badTrial_5 = [66,70,106,121,124,125,130,131,134,135,136,137,138,139,140,141,142,143,144,145,146,147,149,151,153,154,155,156,157,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,197,198,199,200];

badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);
badTrial_5 = sort(badTrial_5);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 2----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end

% ----Session 5----

epoCopySession5 = EPO_copy{subNum,5};
epoCopySession5 = proc_selectChannels(epoCopySession5, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_5)
    val = badTrial_5(length(badTrial_5)-(i-1));
%     val
    epoCopySession5.x(:,:,val) = [];
end

% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;
EPO_copy{subNum,5} = epoCopySession5;

%% Subject 12

subNum = 12;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [270];
badTrial_4 = [240,271];
badTrial_5 = [2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,24,25,26,27,28,29,30,31,32,33,34,35,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,54,55,56,57,58,59,60,61,63,66,68,69,70,71,72,73,74,75,76,77,79,80,82,83,84,85,87,88,89,90,91,92,93,94,95,97,99,101,104,108,109,110,115,116,118,119,121,130,132,133,134,138,139,140,141,142,143,144,145,146,147,148,152,153,154,156,163,164,165,166,167,168,170,172,173,174,175,178,183,186,187,189,190,191,192,193,198,199,200,207,208,215,217,221,222,223,224,226,228,230,235,238,255,258,260,263,272,283,290,300];

badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);
badTrial_5 = sort(badTrial_5);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 2----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end

% ----Session 5----

epoCopySession5 = EPO_copy{subNum,5};
epoCopySession5 = proc_selectChannels(epoCopySession5, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_5)
    val = badTrial_5(length(badTrial_5)-(i-1));
%     val
    epoCopySession5.x(:,:,val) = [];
end

% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;
EPO_copy{subNum,5} = epoCopySession5;

%% Subject 13

subNum = 13;

badTrial_1 = [12,13,14,15,16,17,18,19,20,78,79,80];
badTrial_2 = [135];
badTrial_3 = [[133,192,193,194,196,197,198]];
badTrial_4 = [];
badTrial_5 = [];

badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);
badTrial_5 = sort(badTrial_5);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 2----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end

% ----Session 5----

epoCopySession5 = EPO_copy{subNum,5};
epoCopySession5 = proc_selectChannels(epoCopySession5, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_5)
    val = badTrial_5(length(badTrial_5)-(i-1));
%     val
    epoCopySession5.x(:,:,val) = [];
end

% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;
EPO_copy{subNum,5} = epoCopySession5;

%% Subject 14

subNum = 14;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [];
badTrial_4 = [];
badTrial_5 = [];

badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);
badTrial_5 = sort(badTrial_5);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 2----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end

% ----Session 5----

epoCopySession5 = EPO_copy{subNum,5};
epoCopySession5 = proc_selectChannels(epoCopySession5, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_5)
    val = badTrial_5(length(badTrial_5)-(i-1));
%     val
    epoCopySession5.x(:,:,val) = [];
end

% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;
EPO_copy{subNum,5} = epoCopySession5;

%% Subject 15

subNum = 15;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [];
badTrial_4 = [];
badTrial_5 = [];

badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);
badTrial_5 = sort(badTrial_5);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 1----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end

% ----Session 5----

epoCopySession5 = EPO_copy{subNum,5};
epoCopySession5 = proc_selectChannels(epoCopySession5, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_5)
    val = badTrial_5(length(badTrial_5)-(i-1));
%     val
    epoCopySession5.x(:,:,val) = [];
end

% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;
EPO_copy{subNum,5} = epoCopySession5;

%% Subject 16

subNum = 16;

badTrial_1 = [];
badTrial_2 = [7,157,166];
badTrial_3 = [];
badTrial_4 = [];
badTrial_5 = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,17,18,19,20,21,23,24,25,26,29,34,35,36,37,39,101,102,104,105,106,107,108,110,111,112,114,115,116,117,118,119,120,121,123,128,129,132,133,134,140,145,157,158,160,161,162,170,171,175,177,184,202,203,204,205,208,212,214,217,219,220,221,224,225,226,227,229,230,233,234,235,237,238,239,241,242,253,265,269,280];

badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);
badTrial_5 = sort(badTrial_5);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 1----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end

% ----Session 5----

epoCopySession5 = EPO_copy{subNum,5};
epoCopySession5 = proc_selectChannels(epoCopySession5, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_5)
    val = badTrial_5(length(badTrial_5)-(i-1));
%     val
    epoCopySession5.x(:,:,val) = [];
end

% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;
EPO_copy{subNum,5} = epoCopySession5;

%% Subject 17

subNum = 17;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [];
badTrial_4 = [];
badTrial_5 = [18,238];

badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);
badTrial_5 = sort(badTrial_5);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 1----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end

% ----Session 5----

epoCopySession5 = EPO_copy{subNum,5};
epoCopySession5 = proc_selectChannels(epoCopySession5, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_5)
    val = badTrial_5(length(badTrial_5)-(i-1));
%     val
    epoCopySession5.x(:,:,val) = [];
end

% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;
EPO_copy{subNum,5} = epoCopySession5;

%% Subject 18

subNum = 18;

badTrial_1 = [];
badTrial_2 = [3,297];
badTrial_3 = [];
badTrial_4 = [207];

badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 1----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end


% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;

%% Subject 19

subNum = 19;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [291,295,296,297,298,299,300];
badTrial_4 = [100,134,256,171,229];

badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 1----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end


% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;

%% Subject 20

subNum = 20;

badTrial_1 = [21,22,70,87,88,89,90,130,143,144,145,151,152,153,154,200,211,212,221,222,231,232,233,234,246,247,248,249,250,269,270];
badTrial_2 = [129,130,157,158,159,160,161,162,170,201,202];
badTrial_3 = [];
badTrial_4 = [201,286,289,79,287];

badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 1----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end


% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;

%% Subject 21

subNum = 21;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [];
badTrial_4 = [];

badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 1----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end


% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;

%% Subject 22

subNum = 22;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [];
badTrial_4 = [];

badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 1----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end


% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;

%% Subject 23

subNum = 23;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [29,202];
badTrial_4 = [230,234,235,200];

badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 1----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end


% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;


%% Subject 24

subNum = 24;
badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [];
badTtrial_4 = [161,267];

badTrial_1 = sort(badTrial_1);
badTrial_2 = sort(badTrial_2);
badTrial_3 = sort(badTrial_3);
badTrial_4 = sort(badTrial_4);

% ----Session 1----
epoCopySession1 = EPO_copy{subNum,1};
epoCopySession1 = proc_selectChannels(epoCopySession1, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_1)
    val = badTrial_1(length(badTrial_1)-(i-1));
%     val
    epoCopySession1.x(:,:,val) = [];
end

% ----Session 1----
epoCopySession2 = EPO_copy{subNum,2};
epoCopySession2 = proc_selectChannels(epoCopySession2, chan);   %selection only of the ear channels
for i = 1 : length(badTrial_2)
    val = badTrial_2(length(badTrial_2)-(i-1));
%     val
    epoCopySession2.x(:,:,val) = [];
end

% ----Session 3----
epoCopySession3 = EPO_copy{subNum,3};
epoCopySession3 = proc_selectChannels(epoCopySession3, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_3)
    val = badTrial_3(length(badTrial_3)-(i-1));
%     val
    epoCopySession3.x(:,:,val) = [];
end

% ----Session 4----

epoCopySession4 = EPO_copy{subNum,4};
epoCopySession4 = proc_selectChannels(epoCopySession4, chan);   %selection only of the ear channels

for i = 1 : length(badTrial_4)
    val = badTrial_4(length(badTrial_4)-(i-1));
%     val
    epoCopySession4.x(:,:,val) = [];
end


% Rerurn the calculated signals back to the EPO
EPO_copy{subNum,1} = epoCopySession1;
EPO_copy{subNum,2} = epoCopySession2;
EPO_copy{subNum,3} = epoCopySession3;
EPO_copy{subNum,4} = epoCopySession4;

