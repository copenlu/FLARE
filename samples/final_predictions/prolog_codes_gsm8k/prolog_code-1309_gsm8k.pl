% Define the rule for calculating the average of Mia and Emma's ages
average_ages(MiaAge, AgeDifference, AverageAge) :-
EmmaAge is MiaAge + AgeDifference,
AverageAge is (MiaAge + EmmaAge) / 2.
% Define a predicate to execute the specific query with given values
query(AverageAge) :-
average_ages(40, 16, AverageAge).
% Uncomment the line below to run the query
% ?- query(AverageAge).
%query(AverageAge).