% Define the total chocolate bars for Peter and Martha
total_chocolate(peter, 64).
total_chocolate(martha, 56).
% Calculate the number of chocolate bars in each box for Peter and Martha
chocolate_bars_per_box(peter, P) :-
total_chocolate(peter, TotalPeter),
P is TotalPeter / 4.
chocolate_bars_per_box(martha, M) :-
total_chocolate(martha, TotalMartha),
M is TotalMartha / 7.
% Calculate the difference in the number of chocolate bars in each box between Peter and Martha
difference_chocolate_bars(Difference) :-
chocolate_bars_per_box(peter, P),
chocolate_bars_per_box(martha, M),
Difference is P - M.
% Query predicate to find the difference in the number of chocolate bars in each box between Peter and Martha
query(Difference) :-
difference_chocolate_bars(Difference).
% Uncomment the line below to run the query
% query(Difference).
%query(Difference).