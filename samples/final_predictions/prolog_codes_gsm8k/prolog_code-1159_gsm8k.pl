% Define the logs_length predicate to calculate the length of the tree that can be made into logs
logs_length(TreeLength, LogsPercentage, LogsLength) :-
LogsLength is TreeLength * LogsPercentage.
% Define the number_of_logs predicate to calculate the number of logs that can be made
number_of_logs(LogsLength, LogLength, NumLogs) :-
NumLogs is LogsLength // LogLength.
% Define the number_of_planks predicate to calculate the total number of planks
number_of_planks(NumLogs, PlanksPerLog, NumPlanks) :-
NumPlanks is NumLogs * PlanksPerLog.
% Define the total_earnings predicate to calculate the total earnings from selling the planks
total_earnings(NumPlanks, PlankPrice, TotalEarnings) :-
TotalEarnings is NumPlanks * PlankPrice.
% Input values for the tree length, logs percentage, log length, planks per log, and plank price
% Assumed values for demonstration purposes
query(TotalEarnings) :-
TreeLength = 80,  % Assumed tree length in feet
LogsPercentage = 0.8,  % Assumed percentage of tree that can be made into logs
LogLength = 4,  % Assumed length of each log in feet
PlanksPerLog = 5,  % Assumed number of planks cut from each log
PlankPrice = 1.2,  % Assumed price per plank in dollars
logs_length(TreeLength, LogsPercentage, LogsLength),
number_of_logs(LogsLength, LogLength, NumLogs),
number_of_planks(NumLogs, PlanksPerLog, NumPlanks),
total_earnings(NumPlanks, PlankPrice, TotalEarnings).
% Uncomment the line below to run the query
% query(TotalEarnings).
%query(TotalEarnings).