% Define the rule to calculate the final weight
final_weight(InitialWeight, FinalWeight) :-
WeightIncrease is 0.5 * InitialWeight,         % Calculate the weight increase
WeightTooHeavy is InitialWeight + WeightIncrease,  % Calculate the weight that was too heavy
FinalWeight is WeightTooHeavy - 2.              % Calculate the final weight Jamaal is using
% Query to find the final weight that Jamaal is using
query_final_weight(FinalWeight) :-
final_weight(8, FinalWeight).  % Initial weight is 8 pounds
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_final_weight(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).