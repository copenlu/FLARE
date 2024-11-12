% Define the rule to calculate the number of bags filled
calculate_bags(InitialLollipops, LollipopsEaten, LollipopsPerBag, BagsFilled) :-
RemainingLollipops is InitialLollipops - LollipopsEaten,  % Calculate the remaining lollipops after eating
BagsFilled is RemainingLollipops / LollipopsPerBag.       % Calculate the number of bags filled
% Query to find the number of bags Jean can fill with the given conditions
query_bags_filled(BagsFilled) :-
calculate_bags(30, 2, 2, BagsFilled).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_bags_filled(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).