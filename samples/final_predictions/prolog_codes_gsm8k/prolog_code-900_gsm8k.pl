% Define the predicate to calculate the total number of glasses sold by Julie and the boys
% Params: Glasses sold by Julie, Glasses sold by Boys
total_glasses_sold(Julie, Boys) :- Julie + Boys = 32.
% Define the predicate to calculate the number of glasses sold by each boy
% Params: Total glasses sold by Boys, Glasses sold by each Boy
glasses_per_boy(Boys, Boy) :- Boy is Boys / 2.
% Define the predicate to calculate the difference in glasses sold between Julie and Micah
% Params: Glasses sold by Julie, Glasses sold by Micah, Difference in glasses sold
difference_glasses(Julie, Micah, Difference) :- Difference is Julie - Micah.
% Main predicate to calculate the difference in glasses sold between Julie and Micah
calculate_difference(Difference) :-
% Constants
JulieSold = 14,  % Julie sold 14 glasses
TotalSold = 32,  % Total glasses sold by Julie and the boys
total_glasses_sold(JulieSold, Boys),
glasses_per_boy(Boys, Micah),
difference_glasses(JulieSold, Micah, Difference).
% Query predicate to get the difference in glasses sold between Julie and Micah
query(Difference) :-
calculate_difference(Difference).
% Uncomment the following line to run the query
% query(Difference).
%query(Difference).