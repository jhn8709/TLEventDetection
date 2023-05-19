%% import training data
traininginput = readtable('training_input.csv');
newtraininginput = traininginput(:, [4 6 8 12 16 18 20 22 24 28 32 34 36 38 40 44 48 50 52 54 58 60 62 64 66 70 74 76 78 80 82 84 88 92 96 98 100 104]);
newtraininginput = table2array(newtraininginput);
controlledtraininginput = newtraininginput;
% newtestinginput = newtestinginput';
trainingoutput = readtable('training_output.csv');
trainingoutput = table2array(trainingoutput);
% testingoutput = testingoutput';

%% preprocess data here
maxcurrent = max(newtraininginput);
mincurrent = min(newtraininginput);
for i = 1:38
    
    newtraininginput(:, i) = newtraininginput(:, i)/(maxcurrent(i));
    
end