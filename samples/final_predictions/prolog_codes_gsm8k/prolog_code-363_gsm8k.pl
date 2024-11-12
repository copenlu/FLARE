% Define the earnings predicate to calculate the earnings from each job
earnings(JobHours, JobRate, JobEarnings) :-
JobEarnings is JobHours * JobRate.
% Define the initial values
% Assumed atom/predicate: InitialSavings, Job1Rate, Job2Rate, Job1Hours, Job2Hours, PhoneCost
InitialSavings = 80,  % Initial savings
Job1Rate = 10,  % Rate for the first job
Job2Rate = 5,  % Rate for the second job
Job1Hours = 20,  % Hours worked at the first job
Job2Hours = 15,  % Hours worked at the second job
PhoneCost = 400.  % Cost of the phone
% Calculate the total earnings from both jobs
earnings(Job1Hours, Job1Rate, Job1Earnings),
earnings(Job2Hours, Job2Rate, Job2Earnings),
% Calculate the total savings
TotalSavings is InitialSavings + Job1Earnings + Job2Earnings.
% Calculate the amount needed to save for the phone
amount_needed(AmountNeeded) :-
AmountNeeded is PhoneCost - TotalSavings.
% Query predicate to run the program and get the result
query(AmountNeeded) :-
amount_needed(AmountNeeded).
% Uncomment the following line to run the query
% ?- query(AmountNeeded).
%query(AmountNeeded).