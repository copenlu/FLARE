% Define the weights of the dogs based on the given relationships
weight(affenpinscher, 10).
weight(dachshund, Weight) :- weight(affenpinscher, AffenWeight), Weight is 2 * AffenWeight.
weight(papillon, Weight) :- weight(dachshund, DachshundWeight), Weight is DachshundWeight / 4.
weight(mastiff, Weight) :- weight(papillon, PapillonWeight), Weight is 44 * PapillonWeight.
% Query to find the weight of the Mastiff
query(Weight) :- weight(mastiff, Weight).
% Uncomment the following line to run the query
% ?- query(Weight).
%query(Weight).