% Define the rule to calculate the number of tune-ups needed
calculate_tune_ups(DailyMiles, DaysInMonth, TuneUpInterval, TuneUps) :-
TotalMiles is DailyMiles * DaysInMonth,  % Calculate the total miles driven in the month
TuneUps is TotalMiles // TuneUpInterval.  % Calculate the number of tune-ups needed
% Query to find the number of tune-ups needed based on Jon's driving habits
query_tune_ups_needed(TuneUps) :-
DailyMiles = 100,  % Assumed daily miles driven
DaysInMonth = 30,  % Assumed number of days in the month
TuneUpInterval = 1000,  % Assumed tune-up interval
calculate_tune_ups(DailyMiles, DaysInMonth, TuneUpInterval, TuneUps).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_tune_ups_needed(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).