% Define the rule to calculate the total exercise time
total_exercise_time(TotalTime) :-
SundayTime = 23,  % Assumed atom/predicate: Peter exercised for 23 minutes on Sunday
MondayTime = 16,  % Assumed atom/predicate: Peter exercised for 16 minutes on Monday
TotalTime is SundayTime + MondayTime.
% Define the rule to calculate the goal time for Tuesday
goal_time_tuesday(GoalTime) :-
total_exercise_time(TotalTime),
GoalTime is 2 * TotalTime.
% Define the rule to calculate the additional time needed on Tuesday
additional_time_needed(AdditionalTime) :-
goal_time_tuesday(GoalTime),
SundayTime = 23,  % Assumed atom/predicate: Peter exercised for 23 minutes on Sunday
MondayTime = 16,  % Assumed atom/predicate: Peter exercised for 16 minutes on Monday
AdditionalTime is GoalTime - (SundayTime + MondayTime).
% Query predicate to run the program and get the result
query(AdditionalTime) :-
additional_time_needed(AdditionalTime).
% Uncomment the following line to run the query
% ?- query(AdditionalTime).
%query(AdditionalTime).