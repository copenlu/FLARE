% Define the distribution of cherries among Richard, Jerry, and Robert
cherries_distribution(RichardCherries, JerryCherries, RobertCherries) :-
RobertCherries is 30,
RichardCherries is RobertCherries - 10,
JerryCherries is 60 - RichardCherries - RobertCherries.
% Define the rule to calculate the difference in cherries between Robert and Jerry
difference_between_robert_and_jerry(RobertCherries, JerryCherries, Difference) :-
Difference is RobertCherries - JerryCherries.
% Predicate to encapsulate the entire calculation and output the difference in cherries between Robert and Jerry
calculate_cherry_difference(Difference) :-
cherries_distribution(_, JerryCherries, RobertCherries),  % Richard's cherries are not needed
difference_between_robert_and_jerry(RobertCherries, JerryCherries, Difference).
% Query to find the difference in cherries between Robert and Jerry
query(Difference) :-
calculate_cherry_difference(Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).