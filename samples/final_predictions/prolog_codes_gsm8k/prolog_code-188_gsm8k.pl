% Define a rule to calculate the total time taken by a team in the relay race
total_time([], 0).
total_time([H|T], TotalTime) :-
total_time(T, RemainingTime),
TotalTime is H + RemainingTime.
% Define the running times for each team
well_rounded_team_times([55, 55, 55, 55]).
less_well_rounded_team_times([60, 57, 54, 51]).
% Calculate the total time taken by each team and the winning margin
total_time(well_rounded_team_times(Times), WellRoundedTotalTime),
total_time(less_well_rounded_team_times(Times), LessWellRoundedTotalTime),
WinningMargin is LessWellRoundedTotalTime - WellRoundedTotalTime.
% Define a query predicate to find out the winning margin in seconds
query(WinningMargin) :-
WinningMargin.
% Uncomment the line below to run the query in SWI-Prolog
% query(WinningMargin).
%query(WinningMargin).