% Define the initial quantities of cannolis and corns
initial_quantities(Cannolis, Corns) :-
Cannolis is 40,
Corns is 2 * Cannolis.
% Calculate the quantities of cannolis and corns Allan bought
allan_purchases(Cannolis, BoughtCannolis, BoughtCorns) :-
BoughtCannolis is Cannolis + 60,
BoughtCorns is Cannolis - 40.
% Calculate the combined total of cannolis and corns
combined_total(Cannolis, Corns, Total) :-
Total is Cannolis + Corns.
% Query to find the combined total of cannolis and corns at Allan's house
query_combined_total(Total) :-
initial_quantities(Cannolis, Corns),
allan_purchases(Cannolis, BoughtCannolis, BoughtCorns),
combined_total(Cannolis + BoughtCannolis, Corns + BoughtCorns, Total).
% Uncomment the following line to run the query
% ?- query_combined_total(Total).
% ?- query_combined_total(Total).