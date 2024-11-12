% Define the eggs_consumed predicate to calculate the total eggs consumed based on days and rate
eggs_consumed(Days, Rate, TotalEggs) :-
TotalEggs is Days * Rate.
% Define the total_eggs_needed predicate to calculate the total dozens of eggs needed for 60 days
total_eggs_needed(TotalDozens) :-
eggs_consumed(30, 3, Eggs30),  % Eggs consumed at a rate of 3 eggs per day for 30 days
eggs_consumed(30, 5, Eggs60),  % Eggs consumed at a rate of 5 eggs per day for the next 30 days
TotalEggs is Eggs30 + Eggs60,  % Total eggs consumed in 60 days
TotalDozens is TotalEggs // 12.  % Convert total eggs to dozens
% Query predicate to run the program and get the result
query(TotalDozens) :-
total_eggs_needed(TotalDozens).
% Uncomment the following line to run the query
% ?- query(TotalDozens).
%query(TotalDozens).