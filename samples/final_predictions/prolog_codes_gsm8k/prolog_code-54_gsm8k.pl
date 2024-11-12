% Define the rule to calculate the number of toys to remove
toys_to_remove(ToysToRemove) :-
WeightOfComicBooksRemoved is (1/4) * 30,          % Calculate the weight of the comic books removed
TotalWeightReduction is WeightOfComicBooksRemoved, % Calculate the total weight reduction
RemainingWeightToReduce is 15 - TotalWeightReduction, % Calculate the remaining weight to reduce
WeightOfOneToy is 1/2,                            % Define the weight of one toy
ToysToRemove is RemainingWeightToReduce / WeightOfOneToy. % Calculate the number of toys to remove
% Query to find the number of toys Uriah needs to remove
query_toys_to_remove(ToysToRemove) :-
toys_to_remove(ToysToRemove).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_toys_to_remove(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).