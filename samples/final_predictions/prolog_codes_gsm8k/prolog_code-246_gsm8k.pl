% Define the number of candies Robert has
candies_robert(RobertCandies) :-
RobertCandies is 54 / 2.  % John has twice as many candies as Robert
% Define the number of candies James has
candies_james(JamesCandies, RobertCandies) :-
JamesCandies is RobertCandies + 6.  % James has 6 more candies than Robert
% Define the number of candies John has
candies_john(JohnCandies, RobertCandies) :-
JohnCandies is 54.  % Given that John has 54 candies
% Define the difference in candies between John and James
difference_john_james(JohnCandies, JamesCandies, Difference) :-
Difference is JohnCandies - JamesCandies.
% Query predicate to run the program and get the result
query(Difference) :-
candies_robert(RobertCandies),
candies_james(JamesCandies, RobertCandies),
candies_john(JohnCandies, RobertCandies),
difference_john_james(JohnCandies, JamesCandies, Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).