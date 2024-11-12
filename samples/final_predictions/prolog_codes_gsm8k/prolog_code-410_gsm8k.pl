% Define the rule to calculate the total amount of milk consumed
total_milk_consumed(Glasses, Ounces) :-
Ounces is Glasses * 8.
% Define the rule to calculate the total number of calories consumed
calculate_calories(Ounces, Calories) :-
Calories is Ounces * 3.
% Define the rule to calculate the total number of calories consumed by John
total_calories(Glasses, Calories) :-
total_milk_consumed(Glasses, Ounces),
calculate_calories(Ounces, Calories).
% Query to find the total number of calories consumed by John after drinking 2 glasses of milk
query(Calories) :-
total_calories(2, Calories).
% Uncomment the following line to run the query
% ?- query(Calories).
%query(Calories).