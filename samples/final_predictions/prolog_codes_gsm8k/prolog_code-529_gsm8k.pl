% Calculate the total number of punches thrown during the fight
calculate_total_punches(Rounds, MinutesPerRound, PunchesPerMinute, TotalPunches) :-
TotalMinutes is Rounds * MinutesPerRound,
TotalPunches is TotalMinutes * PunchesPerMinute.
% Query predicate to run the program and get the result
query(TotalPunches) :-
calculate_total_punches(5, 3, 25, TotalPunches).
% Uncomment the following line to run the query
% ?- query(TotalPunches).
%query(TotalPunches).