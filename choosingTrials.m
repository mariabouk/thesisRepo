%% Constants
totalTrials = 17*5*300 + 7*4*300 - (4*100) - (2*100);

%% Subject 24
subNum = 24;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [];
badTtrial_4 = [161,267];

badTrialsAll_24 = [badTrial_1,badTrial_2,badTrial_3,badTtrial_4];
losses_24 = 0;
for i = 1 : length(badTrialsAll_24)
    losses_24 = losses_24 + 1;
end

losses_24 / (4*300)

%% Subject 23
subNum = 23;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [29,202];
badTrial_4 = [230,234,235,200];

badTrialsAll_23 = [badTrial_3,badTtrial_4];
losses_23 = 0;
for i = 1 : length(badTrialsAll_23)
    losses_23 = losses_23 + 1;
end

losses_23 / (4*300)

%% Subject 22
subNum = 22;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [];
badTrial_4 = [];

badTrialsAll_22= [];
losses_22 = 0;

losses_22 / (4*300)

%% Subject 21
subNum = 21;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [];
badTrial_4 = [];

badTrialsAll_21 = [];
losses_21 = 0;

losses_21 / (4*300)

%% Subject 20
subNum = 20;

badTrial_1 = [21,22,70,87,88,89,90,130,143,144,145,151,152,153,154,200,211,212,221,222,231,232,233,234,246,247,248,249,250,269,270];
badTrial_2 = [129,130,157,158,159,160,161,162,170,201,202];
badTrial_3 = [];
badTrial_4 = [201,286,289,79,287];

badTrialsAll_20 = [badTrial_1,badTrial_2,badTtrial_4];
losses_20 = 0;
for i = 1 : length(badTrialsAll_20)
    losses_20 = losses_20 + 1;
end

losses_20 / (4*300)

%% Subject 19
subNum = 19;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [291,295,296,297,298,299,300];
badTrial_4 = [100,134,256,171,229];

badTrialsAll_19 = [badTrial_3,badTtrial_4];
losses_19 = 0;
for i = 1 : length(badTrialsAll_19)
    losses_19 = losses_19 + 1;
end

losses_19 / (4*300)

%% Subject 18
subNum = 18;

badTrial_1 = [];
badTrial_2 = [3,297];
badTrial_3 = [];
badTrial_4 = [207];

badTrialsAll_18 = [badTrial_2,badTtrial_4];
losses_18 = 0;
for i = 1 : length(badTrialsAll_18)
    losses_18 = losses_18 + 1;
end

losses_18 / (4*300)


%% Subject 17
subNum = 17;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [];
badTrial_4 = [];
badTrial_5 = [18,238];

badTrialsAll_17 = [badTtrial_4];
losses_17 = 0;
for i = 1 : length(badTrialsAll_17)
    losses_17 = losses_17 + 1;
end

losses_17 / (4*300)

%% Subject 16
subNum = 16;

badTrial_1 = [];
badTrial_2 = [7,157,166];
badTrial_3 = [];
badTrial_4 = [];
badTrial_5 = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,17,18,19,20,21,23,24,25,26,29,34,35,36,37,39,101,102,104,105,106,107,108,110,111,112,114,115,116,117,118,119,120,121,123,128,129,132,133,134,140,145,157,158,160,161,162,170,171,175,177,184,202,203,204,205,208,212,214,217,219,220,221,224,225,226,227,229,230,233,234,235,237,238,239,241,242,253,265,269,280];

badTrialsAll_16 = [badTrial_2,badTrial_5];
losses_16 = 0;
for i = 1 : length(badTrialsAll_16)
    losses_16 = losses_16 + 1;
end

losses_16 / (5*300)

%% Subject 15
subNum = 15;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [];
badTrial_4 = [];
badTrial_5 = [];

losses_15 = 0;
losses_15 / (3*500 - 100)

%% Subject 14
subNum = 14;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [];
badTrial_4 = [];
badTrial_5 = zeros(1,300);

%Almost all the signals in the 5th session occured as problematic -
%Rejection of the whole session
%badTrial_5 = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,78,79,80,81,82,84,85,87,88,89,90,91,92,93,94,95,97,98,100,102,103,104,106,107,108,109,112,115,116,121,122,123,124,125,128,130,133,134,136,138,141,142,143,144,145,146,148,149,150,151,152,155,158,160,162,164,165,166,167,168,169,170,174,175,176,177,180,181,183,184,185,186,187,188,189,190,193,194,195,196,197,198,199,201,202,203,204,205,206,207,208,209,211,212,213,215,216,217,218,219,220,221,222,223,225,226,227,228,229,231,232,234,235,237,238,239,240,241,242,243,244,245,246,247,248,249,251,255,256,257,258,259,260,263,264,265,266,267,268,269,274,276,280,287,290,292,293,297,298,300];

badTrialsAll_14 = [];
losses_14 = 300;
for i = 1 : length(badTrialsAll_14)
    losses_14 = losses_14 + 1;
end

losses_14 / (5*300)

%% Subject 13
subNum = 13;

badTrial_1 = [12,13,14,15,16,17,18,19,20,78,79,80];
badTrial_2 = [135];
badTrial_3 = [[133,192,193,194,196,197,198]];
badTrial_4 = [];
badTrial_5 = [];

badTrialsAll_13 = [badTrial_1,badTrial_2,badTrial_3];
losses_13 = 0;
for i = 1 : length(badTrialsAll_13)
    losses_13 = losses_13 + 1;
end

losses_13 / (5*300 - 100)

%% Subject 12
subNum = 12;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [270];
badTrial_4 = [240,271];
badTrial_5 = [2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,24,25,26,27,28,29,30,31,32,33,34,35,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,54,55,56,57,58,59,60,61,63,66,68,69,70,71,72,73,74,75,76,77,79,80,82,83,84,85,87,88,89,90,91,92,93,94,95,97,99,101,104,108,109,110,115,116,118,119,121,130,132,133,134,138,139,140,141,142,143,144,145,146,147,148,152,153,154,156,163,164,165,166,167,168,170,172,173,174,175,178,183,186,187,189,190,191,192,193,198,199,200,207,208,215,217,221,222,223,224,226,228,230,235,238,255,258,260,263,272,283,290,300];

badTrialsAll_12 = [badTrial_3,badTtrial_4,badTrial_5];
losses_12 = 0;
for i = 1 : length(badTrialsAll_12)
    losses_12 = losses_12 + 1;
end

losses_12 / (5*300)

%% Subject 11
subNum = 11;

badTrial_1 = [104,105,264,275,279,286,297];
badTrial_2 = [];
badTrial_3 = [145,149,155];
badTrial_4 = [187];
badTrial_5 = [66,70,106,121,124,125,130,131,134,135,136,137,138,139,140,141,142,143,144,145,146,147,149,151,153,154,155,156,157,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,197,198,199,200];

badTrialsAll_11 = [badTrial_1,badTrial_3,badTtrial_4,badTrial_5];
losses_11 = 0;
for i = 1 : length(badTrialsAll_11)
    losses_11 = losses_11 + 1;
end

losses_11 / (300 + 4*200)

%% Subject 10
subNum = 10;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [];
badTrial_4 = [];
badTrial_5 = [1,2,3,5,7,8,9,11,12,13,16,21,22,23,24,25,26,28,30,36,37,64,79,98,102,116,124,126,127,128,154,162,163,186,208,229,250,258,266,268,277,279,282,290,291,292,298,300];

badTrialsAll_10 = [badTrial_5];
losses_10 = 0;
for i = 1 : length(badTrialsAll_10)
    losses_10 = losses_10 + 1;
end

losses_10 / (5*300)

%% Subject 9
subNum = 9;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [237,238];
badTrial_4 = [];
badTrial_5 = [23,63,237];

badTrialsAll_9 = [badTrial_3,badTrial_5];
losses_9 = 0;
for i = 1 : length(badTrialsAll_9)
    losses_9 = losses_9 + 1;
end

losses_9 / (5*300)

%% Subject 8
subNum = 8;
%the channel 2 creates the problems
badTrial_1 = [];
badTrial_2 = [2,191,192,193,195,196,241,242,246,247,248,249,251,252,253,254,255,256,281];
badTrial_3 = [1,2,4,5,6,7,8,10,12,13,45,111,112,113,115,208,209,210,217,218,219,220,222,223,224,225,226,227];
badTrial_4 = [1,2,3,8,9,34,35,36,132,133,134,136,137,144,145,146,152,153,155,156,157,177,229,230,295,296,298,300];
badTrial_5 = [];

badTrialsAll_8 = [badTrial_2,badTrial_3,badTtrial_4];
losses_8 = 0;
for i = 1 : length(badTrialsAll_8)
    losses_8 = losses_8 + 1;
end

losses_8 / (5*300)

%% Subject 7
subNum = 7;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [213];
badTrial_4 = [137];
badTrial_5 = [191];

badTrialsAll_7 = [badTrial_3,badTtrial_4,badTrial_5];
losses_7 = 0;
for i = 1 : length(badTrialsAll_7)
    losses_7 = losses_7 + 1;
end

losses_7 / (5*300)

%% Subject 6
subNum = 6;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [];
badTrial_4 = [];
badTrial_5 = [109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,129,130,162,171,173,176,181,182,184,191,197,206,207,212,213,216,218,219,226,227,228,230,231,232,233,234,235,236,237,238,239,240,243,245,248,249,250,251,252,254,255,257,260,262,263,265,267,268,270,271,272,273,275,276,279,282,292,293,297,298];

badTrialsAll_6 = [badTrial_5];
losses_6 = 0;
for i = 1 : length(badTrialsAll_6)
    losses_6 = losses_6 + 1;
end

losses_6 / (5*300)

%% Subject 5
subNum = 5;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [];
badTrial_4 = [213];
badTrial_5 = [5,6,7,8,9,10,222];

badTrialsAll_5 = [badTtrial_4,badTrial_5];
losses_5 = 0;
for i = 1 : length(badTrialsAll_5)
    losses_5 = losses_5 + 1;
end

losses_5 / (5*300)

%% Subject 4
subNum = 4;
%the existense of the channel 2 creates many problems
badTrial_1 = [40,44,58,59,60,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,91,92,93,94,95,96,97,98,99,100];
badTrial_2 = [209,210,211,212,213,214,215,216,217,218,219,220,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,256,257,258,259,260];
badTrial_3 = [48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,87,99,100,113,114,131,132,133,134,135,136,137,140,141,142,152,153,154,155,190];
badTrial_4 = [213];
badTrial_5 = [13,21,31,61,62,65,69,70,73,78,80,84,89,96,97,130,182,192,211,215,217,218,226,229,232,233,234,235,237,238,243,245,247,248,249,253,254,255,256,257,258,259,260,262,263,264,265,266,267,268,269,276,277,280,282,283,284,286,287,288,289,290,291,294,295];

badTrialsAll_4 = [badTrial_1,badTrial_2,badTrial_3,badTtrial_4,badTrial_5];
losses_4 = 0;
for i = 1 : length(badTrialsAll_4)
    losses_4 = losses_4 + 1;
end

losses_4 / (5*300)


%% Subject 3
subNum = 3;

badTrial_1 = [];
badTrial_2 = [];
badTrial_3 = [];
badTrial_4 = [];
badTrial_5 = [135,198,225,249,230,267,293,118,133,198,201,225,230,233,236,243,251,260,261,272,273,274,278,289,294,296];

badTrialsAll_3 = [badTrial_5];
losses_3 = 0;
for i = 1 : length(badTrialsAll_3)
    losses_3 = losses_3 + 1;
end

losses_3 / (5*300)


%% Subject 2
subNum = 2;

badTrial_1 = [];
badTrial_2 = [152,181];
badTrial_3 = [];
badTrial_4 = [87,93,94,109,146,182,257];
badTrial_5 = [214,255,256,262,265,267,268,270,271,272,274,275,277,278,279,280,282,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300]

badTrialsAll_2 = [badTrial_2,badTtrial_4,badTrial_5];
losses_2 = 0;
for i = 1 : length(badTrialsAll_2)
    losses_2 = losses_2 + 1;
end
losses_2 / (5*300)

%% Subject 1
subNum = 1;
%because of channel 1
badTrial_1 = [211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,238,239,240];
%because of channel 2
badTrial_2 = [49,50,57,59,60,61,65,66,67,68,69,70,71,72,73,74,79,80,81,82,83,84,85,86,87,88,89,96,97,98,99,100,211,212,213,214,215,216,217,218,220,221,222,231,232,233,259,260,261,262,263,269,270];
badTrial_3 = [8,9,10];
badTrial_4 = [41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,100];
badTrial_5 = [];

badTrialsAll_1 = [badTrial_1,badTrial_2,badTrial_3,badTtrial_4];
losses_1 = 0;
for i = 1 : length(badTrialsAll_1)
    losses_1 = losses_1 + 1;
end

losses_1/ (300*5)

%% All losses
losses = losses_1 + losses_2 +losses_3 + losses_4 + losses_5 + losses_6 + losses_7 + losses_8 +  losses_9 +losses_9 +losses_10;
losses = losses + losses_11 + losses_12 + losses_13 + losses_14 + losses_15 + losses_16 + losses_17 + losses_18 + losses_19 + losses_20;
losses = losses + losses_21 + losses_22 + losses_23 + losses_24;


badTrialPercentage = losses / totalTrials;

