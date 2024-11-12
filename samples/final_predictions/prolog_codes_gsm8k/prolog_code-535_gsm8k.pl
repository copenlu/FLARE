% Define the pick_rate predicate to specify the picking rate of each individual
pick_rate(tony, 6).
pick_rate(bobby, 5).
pick_rate(kathy, 10).
pick_rate(ricky, 8).
% Define the total_pick_rate predicate to calculate the total number of quarts picked per hour by all individuals
total_pick_rate(Total) :-
pick_rate(tony, TonyRate),  % Tony picks 6 quarts per hour
pick_rate(bobby, BobbyRate),  % Bobby picks 5 quarts per hour
pick_rate(kathy, KathyRate),  % Kathy picks 10 quarts per hour
pick_rate(ricky, RickyRate),  % Ricky picks 8 quarts per hour
Total is TonyRate + BobbyRate + KathyRate + RickyRate.
% Query predicate to run the program and get the result
query(Total) :-
total_pick_rate(Total).
% Uncomment the following line to run the query
% ?- query(Total).
%query(Total).