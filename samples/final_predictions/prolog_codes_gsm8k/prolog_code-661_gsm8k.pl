% Define the rule to calculate the total amount of flour in three bags
total_flour_in_three_bags(TotalFlour) :-
FlourInOneBag is 8 * 2, % 8 portions of 2 kilograms each
TotalFlour is FlourInOneBag * 3. % Total flour in three bags
% Query to find the total amount of flour in three bags
query(TotalFlour) :-
total_flour_in_three_bags(TotalFlour).
% Uncomment the following line to run the query
% ?- query(TotalFlour).
%query(TotalFlour).