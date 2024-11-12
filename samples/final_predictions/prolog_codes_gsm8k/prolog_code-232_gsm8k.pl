% Define the predicate to calculate the total number of water type cards after changes
total_water_cards_after_changes(TotalWaterCards) :-
TotalWaterCards is 40 - 8 + 14.  % Initial water type cards - lost cards + bought grass type cards
% Define the predicate to calculate the total number of cards after changes
total_cards_after_changes(TotalCards) :-
total_water_cards_after_changes(TotalWater),  % Calculate total water type cards after changes
TotalCards is 30 + TotalWater + 20.  % Total cards = fire type + water type + grass type
% Define the predicate to calculate the percentage chance of picking a water type card
percentage_chance_water_type(Percentage) :-
total_cards_after_changes(TotalCards),  % Calculate total cards after changes
total_water_cards_after_changes(TotalWater),  % Calculate total water type cards after changes
Percentage is round((TotalWater / TotalCards) * 100).  % Calculate percentage chance rounded to nearest integer
% Query predicate to run the program and get the result
query(Percentage) :-
percentage_chance_water_type(Percentage).
% Uncomment the following line to run the query
% ?- query(Percentage).
%query(Percentage).