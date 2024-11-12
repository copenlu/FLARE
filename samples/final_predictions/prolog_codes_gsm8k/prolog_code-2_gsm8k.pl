% Define the rule to calculate the total number of bolts needed for the robe
total_bolts(BlueBolts, TotalBolts) :-
WhiteBolts is BlueBolts / 2, % Calculate the number of white bolts needed (half of blue bolts)
TotalBolts is BlueBolts + WhiteBolts. % Calculate the total number of bolts needed
% Predicate to encapsulate the entire calculation and output the total number of bolts needed
calculate_total_bolts(TotalBolts) :-
total_bolts(2, TotalBolts). % Given that 2 bolts of blue fiber are needed
% Query to find the total number of bolts needed for the robe
query(TotalBolts) :-
calculate_total_bolts(TotalBolts).
% Uncomment the following line to run the query
% ?- query(TotalBolts).
%query(TotalBolts).