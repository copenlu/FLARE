% Define the total number of castles in Scotland
total_castles(220).
% Define the rule to calculate the number of ruined castles
ruined_castles(Ruined) :-
total_castles(Total),
Ruined is Total * 0.4.  % 40% of the total castles are ruins
% Define the rule to calculate the number of unmanned ruined castles
unmanned_ruined_castles(UnmannedRuined) :-
ruined_castles(Ruined),
UnmannedRuined is Ruined / 2.  % Half of the ruined castles are unmanned
% Define the rule to calculate the total number of unmanned ruined castles
calculate_unmanned_ruined_castles(TotalUnmannedRuined) :-
unmanned_ruined_castles(TotalUnmannedRuined).
% Query predicate to run the program and get the result
query(TotalUnmannedRuined) :-
calculate_unmanned_ruined_castles(TotalUnmannedRuined).
% Uncomment the following line to run the query
% ?- query(TotalUnmannedRuined).
%query(TotalUnmannedRuined).