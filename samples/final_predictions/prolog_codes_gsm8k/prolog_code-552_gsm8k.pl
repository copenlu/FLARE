% Define the total vlogs made in the first three weeks
total_vlogs_made(TotalVlogs) :-
TotalVlogs is 18 + 21 + 15.
% Define the remaining vlogs needed to reach the monthly goal
remaining_vlogs_needed(RemainingVlogs) :-
total_vlogs_made(TotalVlogsMade),
RemainingVlogs is 72 - TotalVlogsMade.
% Query predicate to run the program and get the result
query(RemainingVlogs) :-
remaining_vlogs_needed(RemainingVlogs).
% Uncomment the following line to run the query
% ?- query(RemainingVlogs).
%query(RemainingVlogs).