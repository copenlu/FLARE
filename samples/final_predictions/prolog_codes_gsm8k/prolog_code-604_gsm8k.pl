% Define the weight change rules for Cheerios and donuts
weight_change(cheerios, -1.25).
weight_change(donuts, 1.75).
% Calculate the total weight change over 5 weeks
total_weight_change(Breakfast, TotalChange) :-
weight_change(Breakfast, WeeklyChange),
TotalChange is WeeklyChange * 5.
% Find the difference in weight change between Cheerios and donuts
weight_difference(Difference) :-
total_weight_change(cheerios, CheeriosChange),
total_weight_change(donuts, DonutsChange),
Difference is abs(CheeriosChange - DonutsChange).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
weight_difference(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).