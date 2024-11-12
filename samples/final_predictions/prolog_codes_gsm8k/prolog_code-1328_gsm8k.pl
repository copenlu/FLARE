% Define the rule for calculating the total amount spent by Ellen and Lani
total_spent(LeggingsCost, PhotoFrameCost, SunglassesCost, BathrobesCost, TotalSpent) :-
EllenExpense is LeggingsCost + PhotoFrameCost,
LaniExpense is SunglassesCost + (2 * BathrobesCost),
TotalSpent is EllenExpense + LaniExpense.
% Define a predicate to execute the specific query with given values
query(TotalSpent) :-
total_spent(100, 5, 30, 100, TotalSpent).
% Uncomment the line below to run the query
% ?- query(TotalSpent).
%query(TotalSpent).