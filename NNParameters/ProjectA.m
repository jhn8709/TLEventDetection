%% import training data
traininginput = readtable('training_input.csv');
newtraininginput = traininginput(:, [4 6 8 12 16 18 20 22 24 28 32 34 36 38 40 44 48 50 52 54 58 60 62 64 66 70 74 76 78 80 82 84 88 92 96 98 100 104]);
newtraininginput = table2array(newtraininginput);

trainingoutput = readtable('training_output.csv');
trainingoutput = table2array(trainingoutput);


%% neural network setup and training
net = feedforwardnet(10);
net.trainFcn = 'trainbfg';
% net.trainParam.goal = 1e-6;
% net.performFcn = 'sse';
net = train(net, newtraininginput', trainingoutput'); 
view(net);

%% neural network simulation
testinput = readtable('testing_input-1.csv');
testinput = testinput(:, [4 6 8 12 16 18 20 22 24 28 32 34 36 38 40 44 48 50 52 54 58 60 62 64 66 70 74 76 78 80 82 84 88 92 96 98 100 104]);
testinput = table2array(testinput);


simoutput = net(testinput');
simoutput = simoutput';
newsimoutput = simoutput;
maxvalue = max(simoutput);
minvalue = min(simoutput);
sizesim = numel(simoutput);
for i = 1:sizesim
    if simoutput(i) <= 0.34
        newsimoutput(i) = 0;
    else
        newsimoutput(i) = 1;
    end
end
%% neural network performance evaluation
testoutput = readtable('testing_output.csv');
testoutput = table2array(testoutput);
errorcount = 0;
for i = 1:sizesim
    if newsimoutput(i) ~= testoutput(i)
        errorcount = errorcount + 1;
    end
end
percentaccuracy = 1-errorcount/sizesim;        



