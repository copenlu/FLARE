% Define the weight of Mark
mark_weight(150).
% Define the weight of Susan as 20 pounds less than Mark
susan_weight(SusanWeight) :-
mark_weight(MarkWeight),
SusanWeight is MarkWeight - 20.
% Define the weight of Bob as twice the weight of Susan
bob_weight(BobWeight) :-
susan_weight(SusanWeight),
BobWeight is 2 * SusanWeight.
% Define the average weight of the three friends
average_weight(AverageWeight) :-
mark_weight(MarkWeight),
susan_weight(SusanWeight),
bob_weight(BobWeight),
AverageWeight is (MarkWeight + SusanWeight + BobWeight) / 3.
% Query predicate to find the average weight of the three friends
query(AverageWeight) :-
average_weight(AverageWeight).
% Uncomment the line below to run the query
% query(AverageWeight).
%query(AverageWeight).