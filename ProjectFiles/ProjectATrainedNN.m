% import test data
testinput = readtable('testing_input-1.csv');
testinput = testinput(:, [4 6 8 12 16 18 20 22 24 28 32 34 36 38 40 44 48 50 52 54 58 60 62 64 66 70 74 76 78 80 82 84 88 92 96 98 100 104]);
testinput = table2array(testinput);
load('net5a', 'net5a');
% load("net5b.mat");
% load("net5c.mat");
% load("net6a.mat");
% load("net6b.mat");
% load("net6c.mat");
% load("net7a.mat");
% load("net7b.mat");
% load("net7c.mat");
% load("net8a.mat");
% load("net8b.mat");
% load("net9a.mat");
% load("net9b.mat");
% load("net9c.mat");
% load("net10a.mat");
% load("net10b.mat");
% load("net10c.mat");
% load("net10d.mat");
% load("net11a.mat");

one = 0;
zero = 0;
testoutput = readtable('testing_output.csv');
testoutput = table2array(testoutput);
% neural network simulation
% simoutput5a = net5a(testinput(:, [2 5])');
% sizesim = numel(simoutput5a);
simoutput5a = zeros(1, 9082);
for i = 1:9082
    simoutput5a(i) = net5a(testinput(i, [2 5])');
    if simoutput5a(i) <= 0.34
        simoutput5a(i) = 0;
        zero = zero+1;
        fprintf('\nOFF!');
    else
        simoutput5a(i) = 1;
        one = one+1;
        fprintf('\nON!');
    end
end
% 
% simoutput5b = sim(net5b, testinput(:, [3 6])');
% for i = 1:sizesim
%     if simoutput5b(i) <= 0.34
%         simoutput5b(i) = 0;
%     else
%         simoutput5b(i) = 1;
%     end
% end
% 
% simoutput5c = net5c(testinput(:, [1 4])');
% for i = 1:sizesim
%     if simoutput5c(i) <= 0.34
%         simoutput5c(i) = 0;
%     else
%         simoutput5c(i) = 1;
%     end
% end
% 
% simoutput6a = net6a(testinput(:, [8 11])');
% for i = 1:sizesim
%     if simoutput6a(i) <= 0.34
%         simoutput6a(i) = 0;
%     else
%         simoutput6a(i) = 1;
%     end
% end
% 
% simoutput6b = net6b(testinput(:, [9 12])');
% for i = 1:sizesim
%     if simoutput6b(i) <= 0.34
%         simoutput6b(i) = 0;
%     else
%         simoutput6b(i) = 1;
%     end
% end
% 
% simoutput6c = net6c(testinput(:, [7 10])');
% for i = 1:sizesim
%     if simoutput6c(i) <= 0.34
%         simoutput6c(i) = 0;
%     else
%         simoutput6c(i) = 1;
%     end
% end
% 
% simoutput7a = net7a(testinput(:, [14 17])');
% for i = 1:sizesim
%     if simoutput7a(i) <= 0.34
%         simoutput7a(i) = 0;
%     else
%         simoutput7a(i) = 1;
%     end
% end
% 
% simoutput7b = net7b(testinput(:, [15 18])');
% for i = 1:sizesim
%     if simoutput7b(i) <= 0.4
%         simoutput7b(i) = 0;
%     else
%         simoutput7b(i) = 1;
%     end
% end
% 
% simoutput7c = net7c(testinput(:, [13 16])');
% for i = 1:sizesim
%     if simoutput7c(i) <= 0.34
%         simoutput7c(i) = 0;
%     else
%         simoutput7c(i) = 1;
%     end
% end
% 
% % 8a has a lot of errors
% simoutput8a = net8a(testinput(:, [19 21])');
% for i = 1:sizesim
%     if simoutput8a(i) <= 0.55
%         simoutput8a(i) = 0;
%     else
%         simoutput8a(i) = 1;
%     end
% end
% 
% % 8b has a lot of errors
% simoutput8b = net8b(testinput(:, [20 22])');
% for i = 1:sizesim
%     if simoutput8b(i) <= 0.55
%         simoutput8b(i) = 0;
%     else
%         simoutput8b(i) = 1;
%     end
% end
% 
% simoutput9a = net9a(testinput(:, [23 27])');
% for i = 1:sizesim
%     if simoutput9a(i) <= 0.34
%         simoutput9a(i) = 0;
%     else
%         simoutput9a(i) = 1;
%     end
% end
% 
% simoutput9b = net9b(testinput(:, [24 28])');
% for i = 1:sizesim
%     if simoutput9b(i) <= 0.34
%         simoutput9b(i) = 0;
%     else
%         simoutput9b(i) = 1;
%     end
% end
% 
% simoutput9c = net9c(testinput(:, [25 26])');
% for i = 1:sizesim
%     if simoutput9c(i) <= 0.34
%         simoutput9c(i) = 0;
%     else
%         simoutput9c(i) = 1;
%     end
% end
% 
% simoutput10a = net10a(testinput(:, [29 35])');
% for i = 1:sizesim
%     if simoutput10a(i) <= 0.34
%         simoutput10a(i) = 0;
%     else
%         simoutput10a(i) = 1;
%     end
% end
% 
% simoutput10b = net10b(testinput(:, [30 36])');
% for i = 1:sizesim
%     if simoutput10b(i) <= 0.34
%         simoutput10b(i) = 0;
%     else
%         simoutput10b(i) = 1;
%     end
% end
% 
% simoutput10c = net10c(testinput(:, [31 33])');
% for i = 1:sizesim
%     if simoutput10c(i) <= 0.4
%         simoutput10c(i) = 0;
%     else
%         simoutput10c(i) = 1;
%     end
% end
% 
% simoutput10d = net10d(testinput(:, [32 34])');
% for i = 1:sizesim
%     if simoutput10d(i) <= 0.34
%         simoutput10d(i) = 0;
%     else
%         simoutput10d(i) = 1;
%     end
% end
% 
% simoutput11a = net11a(testinput(:, [37 38])');
% for i = 1:sizesim
%     if simoutput11a(i) <= 0.5
%         simoutput11a(i) = 0;
%     else
%         simoutput11a(i) = 1;
%     end
% end
% 
% % neural network performance evaluation
% testoutput = readtable('testing_output.csv');
% testoutput = table2array(testoutput);
% 
% simuoutput = testoutput;
% simuoutput(:, 1) = simoutput5a;
% simuoutput(:, 2) = simoutput5b;
% simuoutput(:, 3) = simoutput5c;
% simuoutput(:, 4) = simoutput6a;
% simuoutput(:, 5) = simoutput6b;
% simuoutput(:, 6) = simoutput6c;
% simuoutput(:, 7) = simoutput7a;
% simuoutput(:, 8) = simoutput7b;
% simuoutput(:, 9) = simoutput7c;
% simuoutput(:, 10) = simoutput8a;
% simuoutput(:, 11) = simoutput8b;
% simuoutput(:, 12) = simoutput9a;
% simuoutput(:, 13) = simoutput9b;
% simuoutput(:, 14) = simoutput9c;
% simuoutput(:, 15) = simoutput10a;
% simuoutput(:, 16) = simoutput10b;
% simuoutput(:, 17) = simoutput10c;
% simuoutput(:, 18) = simoutput10d;
% simuoutput(:, 19) = simoutput11a;
% 
% sizesim2 = numel(simuoutput);
% errorcount = 0;
% error1 = 0;
% error0 = 0;
% errortracker = zeros(1, 1000);
% j = 1;
% for i = 1:sizesim2
%     if simuoutput(i) ~= testoutput(i)
%         errorcount = errorcount + 1;
%         if simuoutput(i) == 1
%             error1 = error1 + 1;
%         else
%             error0 = error0 + 1;
%         end
%         errortracker(j) = i;
%         j = j+1;
%     end
% end
% percentaccuracy = 1-errorcount/sizesim2;