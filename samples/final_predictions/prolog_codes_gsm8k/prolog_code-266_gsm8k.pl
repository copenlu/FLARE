% Predicate to calculate the number of apples Jamal has
% Params: Number of apples Andrea has, Difference in apples between Andrea and Jamal, Number of apples Jamal has
apples_jamal(AndreaApples, Difference, JamalApples) :-
JamalApples is AndreaApples - Difference.
% Predicate to calculate the number of bananas Jamal has
% Params: Number of apples Jamal has, Number of bananas Jamal has
bananas_jamal(JamalApples, JamalBananas) :-
JamalBananas is JamalApples / 2.
% Predicate to calculate the total number of fruits
% Params: Number of apples Jamal has, Number of bananas Jamal has, Total number of fruits
total_fruits(JamalApples, JamalBananas, TotalFruits) :-
TotalFruits is JamalApples + JamalBananas.
% Main predicate to compute the total number of fruits when Andrea has 52 apples
% Params: TotalFruits
calculate_total_fruits(TotalFruits) :-
AndreaApples = 52,
Difference = 8,
% Calculate the number of apples and bananas Jamal has
apples_jamal(AndreaApples, Difference, JamalApples),
bananas_jamal(JamalApples, JamalBananas),
% Calculate the total number of fruits
total_fruits(JamalApples, JamalBananas, TotalFruits).
% Query predicate to get the total number of fruits
query(TotalFruits) :-
calculate_total_fruits(TotalFruits).
% Uncomment the following line to run the query
% query(TotalFruits).
%query(TotalFruits).