%% Loading
load("PCMPS_sub1.mat")
load("PCMPS_sub2Except5thSession.mat")
load("PCMPS_sub2ses5.mat")
load("PCMPS_sub3ExceptSessions4And5.mat")
load("PCMPS_sub3ses4.mat")
load("PCMPS_sub3ses5.mat")
load("PCMPS_sub4.mat")
load("PCMPS_sub5.mat")
load("PCMPS_sub6.mat")
load("PCMPS_sub7.mat")
load("PCMPS_sub8ses1.mat")
load("PCMPS_sub8exceptSes1.mat")
load("PCMPS_sub9_exceptSes5.mat");
load("PCMPS_sub9ses5.mat")
load("PCMPS_sub10.mat")
load("PCMPS_sub11_ses1.mat")
load("PCMPS_sub11ses2.mat")
load("PCMPS_sub11ses3ses4ses5.mat")
load("PCMPS_sub12exceptSes5.mat")
load('PCMPS_sub12ses5.mat')
load("PCMPS_sub13.mat")
load("PCMPS_sub14ses1ses2ses3.mat")
load("PCMPS_sub14ses4.mat")
load("PCMPS_sub14ses5.mat")
load("PCMPS_sub15ExceptSes5.mat")
load("PCMPS_sub15ses5.mat")
load("PCMPS_sub16.mat")
load("PCMPS_sub17.mat")
load("PCMPS_sub18.mat")
load("PCMPS_sub19.mat")
load("PCMPS_sub20ses1.mat")
load("PCMPS_sub20ses3.mat")
load("PCMPS_sub20ses4.mat")
load("PCMPS_sub21.mat")
load("PCMPS_subs22_23_24.mat")

%% Creating the final cells
session1 = [];
session2 = [];
session3 = [];
session4 = [];
session5 = [];

session1_1 = PCMPS_sub1{1};
session1_2 = PCMPS_sub2{1};
session1_3 = PCMPS_sub3{1};
session1_4 = PCMPS_sub4{1};
session1_5 = PCMPS_sub5{1};
session1_6 = PCMPS_sub6{1};
session1_7 = PCMPS_sub7{1};
session1_8 = PCMPS_sub8ses1{1};
session1_9 = PCMPS_sub8_exceptSes5{1};
session1_10 = PCMPS_sub10{1};
session1_11 = PCMPS_sub10_ses1{1};
session1_12 = PCMPS_sub12exceptSes5{1};
session1_13 = PCMPS_sub13{1};
session1_14 = PCMPS_sub14ses1ses2ses3{1};
session1_15 = PCMPS_sub15ExceptSes5{1};
session1_16 = PCMPS_sub16{1};
session1_17 = PCMPS_sub17{1};
session1_18 = PCMPS_sub18{1};
session1_19 = PCMPS_sub19{1};
session1_20 = PCMPS_sub20ses1{1};
session1_21 = PCMPS_sub21{1};
session1_22 = PCMPS_sub22{1};
session1_23 = PCMPS_sub23{1};
session1_24 = PCMPS_sub24{1};

session2_1 = PCMPS_sub1{2};
session2_2 = PCMPS_sub2{2};
session2_3 = PCMPS_sub3{2};
session2_4 = PCMPS_sub4{2};
session2_5 = PCMPS_sub5{2};
session2_6 = PCMPS_sub6{2};
session2_7 = PCMPS_sub7{2};
session2_8 = PCMPS_sub8exceptSes1{2};
session2_9 = PCMPS_sub8_exceptSes5{2};
session2_10 = PCMPS_sub10{2};
session2_11 = PCMPS_sub11ses2{1};
session2_12 = PCMPS_sub12exceptSes5{2};
session2_13 = PCMPS_sub13{2};
session2_14 = PCMPS_sub14ses1ses2ses3{2};
session2_15 = PCMPS_sub15ExceptSes5{2};
session2_16 = PCMPS_sub16{2};
session2_17 = PCMPS_sub17{2};
session2_18 = PCMPS_sub18{2};
session2_19 = PCMPS_sub19{2};
session2_21 = PCMPS_sub21{2};
session2_22 = PCMPS_sub22{2};
session2_23 = PCMPS_sub23{2};
session2_24 = PCMPS_sub24{2};

session3_1 = PCMPS_sub1{3};
session3_2 = PCMPS_sub2{3};
session3_3 = PCMPS_sub3{3};
session3_4 = PCMPS_sub4{3};
session3_5 = PCMPS_sub5{3};
session3_6 = PCMPS_sub6{3};
session3_7 = PCMPS_sub7{3};
session3_8 = PCMPS_sub8exceptSes1{3};
session3_9 = PCMPS_sub8_exceptSes5{3};
session3_10 = PCMPS_sub10{3};
session3_11 = PCMPS_sub11ses3ses4ses5{1}{1};
session3_12 = PCMPS_sub12exceptSes5{3};
session3_13 = PCMPS_sub13{3};
session3_14 = PCMPS_sub14ses1ses2ses3{3};
session3_15 = PCMPS_sub15ExceptSes5{3};
session3_16 = PCMPS_sub16{3};
session3_17 = PCMPS_sub17{3};
session3_18 = PCMPS_sub18{3};
session3_19 = PCMPS_sub19{3};
session3_20 = PCMPS_sub20ses3{1};
session3_21 = PCMPS_sub21{3};
session3_22 = PCMPS_sub22{3};
session3_23 = PCMPS_sub23{3};
session3_24 = PCMPS_sub24{3};

session4_1 = PCMPS_sub1{4};
session4_2 = PCMPS_sub2{4};
session4_3 = PCMPS_sub3ses4{1};
session4_4 = PCMPS_sub4{4};
session4_5 = PCMPS_sub5{4};
session4_6 = PCMPS_sub6{4};
session4_7 = PCMPS_sub7{4};
session4_8 = PCMPS_sub8exceptSes1{4};
session4_9 = PCMPS_sub8_exceptSes5{4};
session4_10 = PCMPS_sub10{4};
session4_11 = PCMPS_sub11ses3ses4ses5{2}{1};
session4_12 = PCMPS_sub12exceptSes5{4};
session4_13 = PCMPS_sub13{4};
session4_14 = PCMPS_sub14ses4{1};
session4_15 = PCMPS_sub15ExceptSes5{4};
session4_16 = PCMPS_sub16{4};
session4_17 = PCMPS_sub17{4};
session4_18 = PCMPS_sub18{4};
session4_19 = PCMPS_sub19{4};
session4_20 = PCMPS_sub20ses4{1};
session4_21 = PCMPS_sub21{4};
session4_22 = PCMPS_sub22{4};
session4_23 = PCMPS_sub23{4};
session4_24 = PCMPS_sub24{4};

session5_1 = PCMPS_sub1{5};
session5_2 = PCMPS_sub2_ses5{1};
session5_3 = PCMPS_sub3Ses5{1};
session5_4 = PCMPS_sub4{5};
session5_5 = PCMPS_sub5{5};
session5_6 = PCMPS_sub6{5};
session5_7 = PCMPS_sub7{5};
session5_8 = PCMPS_sub8exceptSes1{5};
session5_9 = PCMPS_sub9ses5{1};
session5_10 = PCMPS_sub10{5};
session5_11 = PCMPS_sub11ses3ses4ses5{3}{1};
session5_12 = PCMPS_sub12ses5{1};
session5_13 = PCMPS_sub13{5};
session5_14 = PCMPS_sub14ses5{1};
session5_15 = PCMPS_sub15ses5{1};
session5_16 = PCMPS_sub16{5};
session5_17 = PCMPS_sub17{5};

session1 = [session1_1, session1_2, session1_3, session1_4, session1_5, session1_6, session1_7, session1_8, session1_9, session1_10, session1_11, session1_12, session1_13, session1_14, session1_15, session1_16, session1_17, session1_18, session1_19, session1_20, session1_21, session1_22, session1_23, session1_24];
session2 = [session2_1, session2_2, session2_3, session2_4, session2_5, session2_6, session2_7, session2_8, session2_9, session2_10, session2_11, session2_12, session2_13, session2_14, session2_15, session2_16, session2_17, session2_18, session2_19, session2_21, session2_22, session2_23, session2_24];
session3 = [session3_1, session3_2, session3_3, session3_4, session3_5, session3_6, session3_7, session3_8, session3_9, session3_10, session3_11, session3_12, session3_13, session3_14, session3_15, session3_16, session3_17, session3_18, session3_19, session3_20, session3_21, session3_22, session3_23, session3_24];
session4 = [session4_1, session4_2, session4_3, session4_4, session4_5, session4_6, session4_7, session4_8, session4_9, session4_10, session4_11, session4_12, session4_13, session4_14, session4_15, session4_16, session4_17, session4_18, session4_19, session4_20, session4_21, session4_22, session4_23, session4_24];   
session5 = [session5_1, session5_2, session5_3, session5_4, session5_5, session5_6, session5_7, session5_8, session5_9, session5_10, session5_11, session5_12, session5_13, session5_14, session5_15, session5_16, session5_17];



%% Trying a different split for the data - 20 people for training and 4 people for testing - Regression
% Creating the XTrain, YTrain and XTest, YTest 

% Creating the Training Set
session1Train = [];
session2Train = [];
session3Train = [];
session4Train = [];
session5Train = [];

% session1Train = [session1_5, session1_6, session1_7, session1_8, session1_9, session1_10, session1_11, session1_12, session1_13, session1_14, session1_15, session1_16, session1_17, session1_18, session1_19, session1_20, session1_21, session1_22, session1_23, session1_24];
session2Train = [session2_5, session2_6, session2_7, session2_8, session2_9, session2_10, session2_11, session2_12, session2_13, session2_14, session2_15, session2_16, session2_17, session2_18, session2_19, session2_21, session2_22, session2_23, session2_24];
session3Train = [session3_5, session3_6, session3_7, session3_8, session3_9, session3_10, session3_11, session3_12, session3_13, session3_14, session3_15, session3_16, session3_17, session3_18, session3_19, session3_20, session3_21, session3_22, session3_23, session3_24];
session4Train = [session4_5, session4_6, session4_7, session4_8, session4_9, session4_10, session4_11, session4_12, session4_13, session4_14, session4_15, session4_16, session4_17, session4_18, session4_19, session4_20, session4_21, session4_22, session4_23, session4_24];
session5Train = [session5_5, session5_6, session5_7, session5_8, session5_9, session5_10, session5_11, session5_12, session5_13, session5_14, session5_15, session5_16, session5_17];


XTrain = {};
YTrain = {};


for i = 1: length(session1Train)
    input = session1Train(i);
    in = input{1};
    x = cat(3,in{:});          %matrix's dimensions: 129*4*14
    y = permute(x,[1 3 2]);    %matrix's dimensions: 129*14*4
    XTrain{i} = y;
end
for i = 1: length(session5Train)
    input = session2Train(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTrain{i + length(session1Train)} = y;
end
for i = 1: length(session5Train)
    input = session3Train(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTrain{i + length(session1Train) + length(session2Train)} = y;
end
for i = 1: length(session5Train)
    input = session4Train(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTrain{i + length(session1Train) + length(session2Train) + length(session3Train)} = y;
end
for i = 1: length(session5Train)
    input = session5Train(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTrain{i + length(session1Train) + length(session2Train) + length(session3Train) + length(session4Train)} = y;
end

X_trans = XTrain';
XTrain = cat(4, X_trans{:});

% Creating the categorical responses for the training set
for i = 1  : length(session1Train)
    YTrain{i} = 1;%'1';
end
for i = 1: length(session5Train) 
    YTrain{i + length(session1Train)} = 1; %'1' ;
end
for i = 1: length(session5Train)
    YTrain{i + length(session1Train) +  length(session2Train)} = 2; %'2' ;
end
for i = 1: length(session5Train)
    YTrain{i + length(session1Train) +  length(session2Train) + length(session3Train)} = 3;  %'3' ;
end
for i = 1: length(session5Train)
    YTrain{i + length(session1Train) +  length(session2Train) + length(session3Train) + length(session4Train)} = 4 ;%'4' ;
end
% YTrain = categorical(YTrain');
YTrain = cell2mat(YTrain);
YTrain = YTrain';

% Creating the Test set
session1Test = [];
session2Test = [];
session3Test = [];
session4Test = [];
session5Test = [];

session1Test = [session1_1, session1_2, session1_3, session1_4];
session2Test = [session2_1, session2_2, session2_3, session2_4];
session3Test = [session3_1, session3_2, session3_3, session3_4];
session4Test = [session4_1, session4_2, session4_3, session4_4];
session5Test = [session5_1, session5_2, session5_3, session5_4];

XTest = {};
YTest = {};

for i = 1: length(session1Test)
    input = session1Test(i);
    in = input{1};
    x = cat(3,in{:});          %matrix's dimensions: 129*4*14
    y = permute(x,[1 3 2]);    %matrix's dimensions: 129*14*4
    XTest{i} = y;
end
for i = 1: length(session2Test)
    input = session2Test(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTest{i + length(session1Test)} = y;
end
for i = 1: length(session3Test)
    input = session3Test(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTest{i + length(session1Test) + length(session2Test)} = y;
end
for i = 1: length(session4Test)
    input = session4Test(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTest{i + length(session1Test) + length(session2Test) + length(session3Test)} = y;
end
for i = 1: length(session5Test)
    input = session5Test(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTest{i + length(session1Test) + length(session2Test) + length(session3Test) + length(session4Test)} = y;
end

X_trans = XTest';
XTest = cat(4, X_trans{:});

% Creating the categorical responses

for i = 1  : length(session1Test)
    YTest{i} = 1; % '1';
end
for i = 1: length(session2Test) 
    YTest{i + length(session1Test)} = 1; %'1' ;
end
for i = 1: length(session3Test)
    YTest{i + length(session1Test) +  length(session2Test)} = 2; %'2' ;
end
for i = 1: length(session4Test)
    YTest{i + length(session1Test) +  length(session2Test) + length(session3Test)} = 3;%'3' ;
end
for i = 1: length(session5Test)
    YTest{i + length(session1Test) +  length(session2Test) + length(session3Test) + length(session4Test)} = 4; %'4' ;
end
% YTest = categorical(YTest');
YTest = cell2mat(YTest');

%XTrain = permute(XTrain,[4 1 2 3]);    %For PYTHON
%XTest = permute(XTest,[4 1 2 3]);      %For PYTHON


%% Creating a training and test set in order to predict movement or not  - Regression - Mostly used

% Creating the Training Set
session1Train = [];
session2Train = [];
session3Train = [];
session4Train = [];
session5Train = [];

session1Train = [session1_5, session1_6, session1_7, session1_8, session1_9, session1_10, session1_11, session1_12, session1_13, session1_14, session1_15, session1_16, session1_17, session1_18, session1_19, session1_20, session1_21, session1_22, session1_23, session1_24];
session2Train = [session2_5, session2_6, session2_7, session2_8, session2_9, session2_10, session2_11, session2_12, session2_13, session2_14, session2_15, session2_16, session2_17, session2_18, session2_19, session2_21, session2_22, session2_23, session2_24];
session3Train = [session3_5, session3_6, session3_7, session3_8 , session3_9, session3_10, session3_11, session3_12, session3_13];  %, session3_14, session3_15, session3_16 , session3_17, session3_18, session3_19, session3_20, session3_21, session3_22, session3_23, session3_24
session4Train = [session4_5, session4_6, session4_7, session4_8, session4_9, session4_10, session4_11, session4_12, session4_13, session4_14, session4_15, session4_16, session4_17, session4_18, session4_19, session4_20, session4_21, session4_22, session4_23, session4_24,];
session5Train = [session5_5, session5_6, session5_7, session5_8, session5_9, session5_10, session5_11, session5_12, session5_13, session5_14, session5_15, session5_16, session5_17];


XTrain = {};
YTrain = {};
xTrain = {};
yTrain = {};

for i = 1: length(session1Train)
    input = session1Train(i);
    in = input{1};
    x = cat(3,in{:});          %matrix's dimensions: 129*4*14
    y = permute(x,[1 3 2]);    %matrix's dimensions: 129*14*4
    XTrain{i} = y;
end
for i = 1: length(session2Train)
    input = session2Train(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTrain{i + length(session1Train)} = y;
end
for i = 1: length(session3Train)
    input = session3Train(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTrain{i + length(session1Train) + length(session2Train)} = y;
end
for i = 1: length(session4Train)
    input = session4Train(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTrain{i + length(session1Train) + length(session2Train) + length(session3Train)} = y;
end
for i = 1: length(session5Train)
    input = session5Train(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTrain{i + length(session1Train) + length(session2Train) + length(session3Train) + length(session4Train)} = y;
end 

X_trans = XTrain';
XTrain = cat(4, X_trans{:});

% Creating the categorical responses for the training set
for i = 1  : length(session1Train)
    YTrain{i} = 0; %'1';
end
for i = 1: length(session2Train) 
    YTrain{i + length(session1Train)} = 0; %'1' ;
end
for i = 1: length(session3Train)
    YTrain{i + length(session1Train) +  length(session2Train)} = 1; %'2' ;
end
for i = 1: length(session4Train)
    YTrain{i + length(session1Train) +  length(session2Train) + length(session3Train)} = 1;  %'3' ;
end
for i = 1: length(session5Train)
    YTrain{i + length(session1Train) +  length(session2Train) + length(session3Train) + length(session4Train)} = 1 ;%'4' ;
end
% YTrain = categorical(YTrain');
YTrain = cell2mat(YTrain);
YTrain = YTrain';


% Creating the Test set
session1Test = [];
session2Test = [];
session3Test = [];
session4Test = [];
session5Test = [];

session1Test = [session1_1, session1_2, session1_3, session1_4];
session2Test = [session2_1, session2_2, session2_3, session2_4];
%session3Test = [session3_1, session3_2, session3_3, session3_4];
session4Test = [session4_1, session4_2, session4_3, session4_4];
session5Test = [session5_1, session5_2, session5_3, session5_4];

XTest = {};
YTest = {};

for i = 1: length(session1Test)
    input = session1Test(i);
    in = input{1};
    x = cat(3,in{:});          %matrix's dimensions: 129*4*14
    y = permute(x,[1 3 2]);    %matrix's dimensions: 129*14*4
    XTest{i} = y;
end
for i = 1: length(session2Test)
    input = session2Test(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTest{i + length(session1Test)} = y;
end
for i = 1: length(session3Test)
    input = session3Test(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTest{i + length(session1Test) + length(session2Test)} = y;
end
for i = 1: length(session4Test)
    input = session4Test(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTest{i + length(session1Test) + length(session2Test) + length(session3Test)} = y;
end
for i = 1: length(session5Test)
    input = session5Test(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTest{i + length(session1Test) + length(session2Test) + length(session3Test) + length(session4Test)} = y;
end

X_trans = XTest';
XTest = cat(4, X_trans{:});

% Creating the categorical responses

for i = 1  : length(session1Test)
    YTest{i} = 0; % '1';
end
for i = 1: length(session2Test) 
    YTest{i + length(session1Test)} = 0; %'1' ;
end
for i = 1: length(session3Test)
    YTest{i + length(session1Test) +  length(session2Test)} = 1; %'2' ;
end
for i = 1: length(session4Test)
    YTest{i + length(session1Test) +  length(session2Test) + length(session3Test)} = 1;%'3' ;
end
for i = 1: length(session5Test)
    YTest{i + length(session1Test) +  length(session2Test) + length(session3Test) + length(session4Test)} = 1; %'4' ;
end
% YTest = categorical(YTest');
YTest = cell2mat(YTest');


XTrain = permute(XTrain,[4 1 2 3]);    %For PYTHON
XTest = permute(XTest,[4 1 2 3]);      %For PYTHON



sum(YTrain == 0)
sum(YTrain == 1)

sum(YTest == 0)
sum(YTest == 1)



sum(YTrain == 0) + sum(YTest == 0)
sum(YTrain == 1) + sum(YTest == 1) 



% %%Calculating the data for the session 5 
% XSession5 = {};
% YSession5 = {};
% 
% for i = 1: length(session5Train)
%     input = session5Train(i);
%     in = input{1};
%     x = cat(3,in{:});          %matrix's dimensions: 129*4*14
%     y = permute(x,[1 3 2]);    %matrix's dimensions: 129*14*4
%     XSession5{i} = y;
% end
% X_trans5 = XSession5';
% XSession5 = cat(4, X_trans5{:});
% 
% for i = 1  : length(session5Train)
%     YSession5{i} = 1; % '1';
% end
% YSession5 = cell2mat(YSession5');
% 
% XSession5 = permute(XSession5,[4 1 2 3]);    %For PYTHON

%% Creating a training, a validation and test set in order to predict movement or not 


% Creating the Test set
session1Test = [];
session2Test = [];
session3Test = [];
session4Test = [];
session5Test = [];

session1Test = [session1_1, session1_2, session1_3, session1_4];
session2Test = [session2_1, session2_2, session2_3, session2_4];
session4Test = [session4_1, session4_2, session4_3, session4_4];
session5Test = [session5_1, session5_2, session5_3, session5_4];

XTest = {};
YTest = {};

for i = 1: length(session1Test)
    input = session1Test(i);
    in = input{1};
    x = cat(3,in{:});          %matrix's dimensions: 129*4*14
    y = permute(x,[1 3 2]);    %matrix's dimensions: 129*14*4
    XTest{i} = y;
end
for i = 1: length(session2Test)
    input = session2Test(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTest{i + length(session1Test)} = y;
end
for i = 1: length(session3Test)
    input = session3Test(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTest{i + length(session1Test) + length(session2Test)} = y;
end
for i = 1: length(session4Test)
    input = session4Test(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTest{i + length(session1Test) + length(session2Test) + length(session3Test)} = y;
end
for i = 1: length(session5Test)
    input = session5Test(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTest{i + length(session1Test) + length(session2Test) + length(session3Test) + length(session4Test)} = y;
end

X_trans = XTest';
XTest = cat(4, X_trans{:});

% Creating the categorical responses

for i = 1  : length(session1Test)
    YTest{i} = 0; 
end
for i = 1: length(session2Test) 
    YTest{i + length(session1Test)} = 0; 
end
for i = 1: length(session3Test)
    YTest{i + length(session1Test) +  length(session2Test)} = 1;
end
for i = 1: length(session4Test)
    YTest{i + length(session1Test) +  length(session2Test) + length(session3Test)} = 1;
end
for i = 1: length(session5Test)
    YTest{i + length(session1Test) +  length(session2Test) + length(session3Test) + length(session4Test)} = 1;
end

YTest = cell2mat(YTest');
XTest = permute(XTest,[4 1 2 3]);      %For PYTHON


sum(YTest == 0)
sum(YTest == 1)

% Creating the Training set

session1Train = [];
session2Train = [];
session3Train = [];
session4Train = [];
session5Train = [];

session1Train = [session1_11, session1_12, session1_13, session1_14, session1_15,...
                 session1_16, session1_17, session1_18, session1_19, session1_20,...
                 session1_21, session1_22, session1_23, session1_24];
session2Train = [session2_11, session2_12, session2_13, session2_14, session2_15,...
                 session2_16, session2_17, session2_18, session2_19, session2_21,...
                 session2_22, session2_23, session2_24];
session3Train = [session3_11, session3_12, session3_13, session3_14, session3_15,...
                 session3_16 , session3_17, session3_18, session3_19];
                 %session3_20, session3_21, session3_22, session3_23, session3_24];
session4Train = [session4_11, session4_12, session4_13, session4_14, session4_15, ...
                 session4_16, session4_17, session4_18, session4_19, session4_20, ...
                 session4_21, session4_22, session4_23, session4_24];
session5Train = [session5_11, session5_12, session5_13, session5_14, session5_15, session5_16, session5_17];


XTrain = {};
YTrain = {};
xTrain = {};
yTrain = {};

for i = 1: length(session1Train)
    input = session1Train(i);
    in = input{1};
    x = cat(3,in{:});          %matrix's dimensions: 129*4*14
    y = permute(x,[1 3 2]);    %matrix's dimensions: 129*14*4
    XTrain{i} = y;
end
for i = 1: length(session2Train)
    input = session2Train(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTrain{i + length(session1Train)} = y;
end
for i = 1: length(session3Train)
    input = session3Train(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTrain{i + length(session1Train) + length(session2Train)} = y;
end
for i = 1: length(session4Train)
    input = session4Train(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTrain{i + length(session1Train) + length(session2Train) + length(session3Train)} = y;
end
for i = 1: length(session5Train)
    input = session5Train(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTrain{i + length(session1Train) + length(session2Train) + length(session3Train) + length(session4Train)} = y;
end 

X_trans = XTrain';
XTrain = cat(4, X_trans{:});

XTrain = permute(XTrain,[4 1 2 3]);      %For PYTHON

% Creating the categorical responses for the training set
for i = 1  : length(session1Train)
    YTrain{i} = 0;  
end
for i = 1: length(session2Train) 
    YTrain{i + length(session1Train)} = 0;  
end
for i = 1: length(session3Train)
    YTrain{i + length(session1Train) +  length(session2Train)} = 1;  
end
for i = 1: length(session4Train)
    YTrain{i + length(session1Train) +  length(session2Train) + length(session3Train)} = 1; 
end
for i = 1: length(session5Train)
    YTrain{i + length(session1Train) +  length(session2Train) + length(session3Train) + length(session4Train)} = 1 ; 
end

YTrain = cell2mat(YTrain);
YTrain = YTrain';

sum(YTrain == 0)
sum(YTrain == 1)


% Creating the Validation Set

session1Val= [];
session2Val = [];
session3Val = [];
session4Val = [];
session5Val = [];

session1Val = [session1_5, session1_6, session1_7, session1_8, session1_9, session1_10];
session2Val = [session2_5, session2_6, session2_7, session2_8, session2_9, session2_10];
session4Val = [session4_5, session4_6, session4_7, session4_8, session4_9, session4_10];
session5Val = [session5_5, session5_6, session5_7, session5_8, session5_9, session5_10];


XVal = {};
YVal = {};
xVal = {};
yVal = {};

for i = 1: length(session1Val)
    input = session1Val(i);
    in = input{1};
    x = cat(3,in{:});          %matrix's dimensions: 129*4*14
    y = permute(x,[1 3 2]);    %matrix's dimensions: 129*14*4
    XVal{i} = y;
end
for i = 1: length(session2Val)
    input = session2Val(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XVal{i + length(session1Val)} = y;
end
for i = 1: length(session3Val)
    input = session3Val(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XVal{i + length(session1Val) + length(session2Val)} = y;
end
for i = 1: length(session4Val)
    input = session4Val(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XVal{i + length(session1Val) + length(session2Val) + length(session3Val)} = y;
end
for i = 1: length(session5Val)
    input = session5Val(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XVal{i + length(session1Val) + length(session2Val) + length(session3Val) + length(session4Val)} = y;
end 

X_trans = XVal';
XVal = cat(4, X_trans{:});

XVal = permute(XVal,[4 1 2 3]);      %For PYTHON


% Creating the categorical responses for the training set
for i = 1  : length(session1Val)
    YVal{i} = 0;  
end
for i = 1: length(session2Val) 
    YVal{i + length(session1Val)} = 0;  
end
for i = 1: length(session3Val)
    YVal{i + length(session1Val) +  length(session2Val)} = 1;  
end
for i = 1: length(session4Val)
    YVal{i + length(session1Val) +  length(session2Val) + length(session3Val)} = 1; 
end
for i = 1: length(session5Val)
    YVal{i + length(session1Val) +  length(session2Val) + length(session3Val) + length(session4Val)} = 1 ; 
end

YVal = cell2mat(YVal);
YVal = YVal';


sum(YVal == 0)
sum(YVal == 1)

%% Classification - movement or not

% Creating the Training Set
session1Train = [];
session2Train = [];
session3Train = [];
session4Train = [];
session5Train = [];

session1Train = [session1_18, session1_19, session1_20, session1_21, session1_22, session1_23, session1_24];
session2Train = [session2_18, session2_19, session2_21, session2_22, session2_23, session2_24];
session3Train = [session3_18, session3_19, session3_20, session3_21, session3_22, session3_23, session3_24];
session4Train = [session4_5, session4_6, session4_7, session4_8, session4_9, session4_10, session4_11, session4_12, session4_13, session4_14, session4_15, session4_16, session4_17, session4_18, session4_19, session4_20, session4_21, session4_22, session4_23, session4_24];
%session5Train = [session5_5, session5_6, session5_7, session5_8, session5_9, session5_10, session5_11, session5_12, session5_13, session5_14, session5_15, session5_16, session5_17];


XTrain = {};
YTrain = {};

for i = 1: length(session1Train)
    input = session1Train(i);
    in = input{1};
    x = cat(3,in{:});          %matrix's dimensions: 129*4*14
    y = permute(x,[1 3 2]);    %matrix's dimensions: 129*14*4
    XTrain{i} = y;
end
for i = 1: length(session2Train)
    input = session2Train(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTrain{i + length(session1Train)} = y;
end
for i = 1: length(session3Train)
    input = session3Train(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTrain{i + length(session1Train) + length(session2Train)} = y;
end
for i = 1: length(session4Train)
    input = session4Train(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTrain{i + length(session1Train) + length(session2Train) + length(session3Train)} = y;
end
for i = 1: length(session5Train)
    input = session5Train(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTrain{i + length(session1Train) + length(session2Train) + length(session3Train) + length(session4Train)} = y;
end

X_trans = XTrain';
XTrain = cat(4, X_trans{:});

% Creating the categorical responses for the training set
for i = 1  : length(session1Train)
    YTrain{i} = '0';
end
for i = 1: length(session2Train) 
    YTrain{i + length(session1Train)} = '0' ;
end
for i = 1: length(session3Train)
    YTrain{i + length(session1Train) +  length(session2Train)} = '1' ;
end
for i = 1: length(session4Train)
    YTrain{i + length(session1Train) +  length(session2Train) + length(session3Train)} = '1' ;
end
for i = 1: length(session5Train)
    YTrain{i + length(session1Train) +  length(session2Train) + length(session3Train) + length(session4Train)} = '1' ;
end
YTrain = categorical(YTrain');
% YTrain = cell2mat(YTrain);
% YTrain = YTrain';

% Creating the Test set
session1Test = [];
session2Test = [];
session3Test = [];
session4Test = [];
session5Test = [];

session1Test = [session1_1, session1_2, session1_3, session1_4];
session2Test = [session2_1, session2_2, session2_3, session2_4];
session3Test = [session3_1, session3_2, session3_3, session3_4];
session4Test = [session4_1, session4_2, session4_3, session4_4];
session5Test = [session5_1, session5_2, session5_3, session5_4];

XTest = {};
YTest = {};

for i = 1: length(session1Test)
    input = session1Test(i);
    in = input{1};
    x = cat(3,in{:});          %matrix's dimensions: 129*4*14
    y = permute(x,[1 3 2]);    %matrix's dimensions: 129*14*4
    XTest{i} = y;
end
for i = 1: length(session2Test)
    input = session2Test(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTest{i + length(session1Test)} = y;
end
for i = 1: length(session3Test)
    input = session3Test(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTest{i + length(session1Test) + length(session2Test)} = y;
end
for i = 1: length(session4Test)
    input = session4Test(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTest{i + length(session1Test) + length(session2Test) + length(session3Test)} = y;
end
for i = 1: length(session5Test)
    input = session5Test(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTest{i + length(session1Test) + length(session2Test) + length(session3Test) + length(session4Test)} = y;
end

X_trans = XTest';
XTest = cat(4, X_trans{:});

% Creating the categorical responses

for i = 1  : length(session1Test)
    YTest{i} = '0';
end
for i = 1: length(session2Test) 
    YTest{i + length(session1Test)} = '0' ;
end
for i = 1: length(session3Test)
    YTest{i + length(session1Test) +  length(session2Test)} = '1' ;
end
for i = 1: length(session4Test)
    YTest{i + length(session1Test) +  length(session2Test) + length(session3Test)} = '1' ;
end
for i = 1: length(session5Test)
    YTest{i + length(session1Test) +  length(session2Test) + length(session3Test) + length(session4Test)} = '1' ;
end
YTest = categorical(YTest');
% YTest = cell2mat(YTest');



%% Classification to 4 moving categories - Balancing of the data

% Creating the Training Set
session1Train = [];
session2Train = [];
session3Train = [];
session4Train = [];
session5Train = [];

%session1Train = [session1_5, session1_6, session1_7, session1_8, session1_9, session1_10, session1_11, session1_12, session1_13, session1_14, session1_15, session1_16, session1_17, session1_18, session1_19, session1_20, session1_21, session1_22, session1_23, session1_24];
session2Train = [session2_5, session2_6, session2_7, session2_8, session2_9, session2_10, session2_11, session2_12, session2_13, session2_14, session2_15, session2_16, session2_17, session2_18, session2_19, session2_21, session2_22, session2_23, session2_24];
session3Train = [session3_5, session3_6, session3_7, session3_8, session3_9, session3_10, session3_11, session3_12, session3_13, session3_14, session3_15, session3_16, session3_17, session3_18, session3_19, session3_20, session3_21, session3_22, session3_23, session3_24];
session4Train = [session4_5, session4_6, session4_7, session4_8, session4_9, session4_10, session4_11, session4_12, session4_13, session4_14, session4_15, session4_16, session4_17, session4_18, session4_19, session4_20, session4_21, session4_22, session4_23, session4_24];
session5Train = [session5_5, session5_6, session5_7, session5_8, session5_9, session5_10, session5_11, session5_12, session5_13, session5_14, session5_15, session5_16, session5_17];


XTrain = {};
YTrain = {};
for i = 1: length(session1Train)
    input = session1Train(i);
    in = input{1};
    x = cat(3,in{:});          %matrix's dimensions: 129*4*14
    y = permute(x,[1 3 2]);    %matrix's dimensions: 129*14*4
    XTrain{i} = y;
end
for i = 1: length(session5Train)
    input = session2Train(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTrain{i + length(session1Train)} = y;
end
for i = 1: length(session5Train)
    input = session3Train(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTrain{i + length(session1Train) + length(session2Train)} = y;
end
for i = 1: length(session5Train)
    input = session4Train(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTrain{i + length(session1Train) + length(session2Train) + length(session3Train)} = y;
end
for i = 1: length(session5Train)
    input = session5Train(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTrain{i + length(session1Train) + length(session2Train) + length(session3Train) + length(session4Train)} = y;
end


X_trans = XTrain';
XTrain = cat(4, X_trans{:});

% Creating the categorical responses for the training set
for i = 1  : length(session1Train)
    YTrain{i} = '1';
end
for i = 1: length(session5Train) 
    YTrain{i + length(session1Train)} = '1' ;
end
for i = 1: length(session3Train)
    YTrain{i + length(session1Train) +  length(session5Train)} = '2' ;
end
for i = 1: length(session4Train)
    YTrain{i + length(session1Train) +  length(session5Train) + length(session5Train)} = '3' ;
end
for i = 1: length(session5Train)
    YTrain{i + length(session1Train) +  length(session5Train) + length(session5Train) + length(session5Train)} = '4' ;
end
YTrain = categorical(YTrain');

% Creating the Test set
session1Test = [];
session2Test = [];
session3Test = [];
session4Test = [];
session5Test = [];

session1Test = [session1_1, session1_2, session1_3, session1_4];
session2Test = [session2_1, session2_2, session2_3, session2_4];
session3Test = [session3_1, session3_2, session3_3, session3_4];
session4Test = [session4_1, session4_2, session4_3, session4_4];
session5Test = [session5_1, session5_2, session5_3, session5_4];

XTest = {};
YTest = {};

for i = 1: length(session1Test)
    input = session1Test(i);
    in = input{1};
    x = cat(3,in{:});          %matrix's dimensions: 129*4*14
    y = permute(x,[1 3 2]);    %matrix's dimensions: 129*14*4
    XTest{i} = y;
end
for i = 1: length(session2Test)
    input = session2Test(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTest{i + length(session1Test)} = y;
end
for i = 1: length(session3Test)
    input = session3Test(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTest{i + length(session1Test) + length(session2Test)} = y;
end
for i = 1: length(session4Test)
    input = session4Test(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTest{i + length(session1Test) + length(session2Test) + length(session3Test)} = y;
end
for i = 1: length(session5Test)
    input = session5Test(i);
    in = input{1};
    x = cat(3,in{:});          
    y = permute(x,[1 3 2]);
    XTest{i + length(session1Test) + length(session2Test) + length(session3Test) + length(session4Test)} = y;
end

X_trans = XTest';
XTest = cat(4, X_trans{:});

% Creating the categorical responses

for i = 1  : length(session1Test)
    YTest{i} = '1';
end
for i = 1: length(session2Test) 
    YTest{i + length(session1Test)} = '1' ;
end
for i = 1: length(session3Test)
    YTest{i + length(session1Test) +  length(session2Test)} = '2' ;
end
for i = 1: length(session4Test)
    YTest{i + length(session1Test) +  length(session2Test) + length(session3Test)} = '3' ;
end
for i = 1: length(session5Test)
    YTest{i + length(session1Test) +  length(session2Test) + length(session3Test) + length(session4Test)} = '4' ;
end
YTest = categorical(YTest');

