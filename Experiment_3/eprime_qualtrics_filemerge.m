%% Load data files for merging 

eprime = readtable('eprime_to_matlab.xlsx');
qualtrics = readtable('qualtrics_to_matlab.xlsx');

%% Edit datasets to fit the merge
% Rename subject number variable so it is the same for both the qualtrics
% and the eprime data.
qualtrics.Properties.VariableNames{'Deltakernummer_'} = 'Subject';

% Rename subject 514 to 214.
qualtrics.Subject(qualtrics.Subject == 514) = 214;

% Remove subject 120 from the qualtrics data
cutrow = find(qualtrics.Subject == 120);
qualtrics(cutrow,:) = [];

%% Merge datasets
alldata = join(eprime, qualtrics);

%% export the merged dataset
% file is written to the current working directory
writetable(alldata,'alldata_merged.csv', 'Delimiter', ';', 'QuoteStrings',true);