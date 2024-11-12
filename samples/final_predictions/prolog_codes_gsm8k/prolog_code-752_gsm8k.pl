% Facts for book weights
weight(math_science, 2).
weight(french, 4).
weight(english, 3).
weight(history, 6).
% Rule to calculate total weight
total_weight(TotalWeight) :-
weight(math_science, WeightMS),
weight(french, WeightFrench),
weight(english, WeightEnglish),
weight(history, WeightHistory),
TotalWeight is WeightMS * 2 + WeightFrench + WeightEnglish + WeightHistory.
% Query predicate to find the total weight of all books Cindy is carrying
query(TotalWeight) :-
total_weight(TotalWeight).
% Uncomment the line below to run the query
% query(TotalWeight).
%query(TotalWeight).