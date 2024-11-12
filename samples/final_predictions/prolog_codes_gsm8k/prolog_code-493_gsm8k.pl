% Define the weight of the 1959 penny
weight_1959_penny(48).
% Calculate the weight of the 2010 penny based on the weight of the 1959 penny
weight_2010_penny(Weight2010) :-
weight_1959_penny(Weight1959),
Weight2010 is 3/4 * Weight1959.
% Calculate the combined weight of the two pennies
combined_weight(CombinedWeight) :-
weight_1959_penny(Weight1959),
weight_2010_penny(Weight2010),
CombinedWeight is Weight1959 + Weight2010.
% Query to calculate the combined weight of the two pennies
query(CombinedWeight) :-
combined_weight(CombinedWeight).
% Uncomment the following line to run the query and calculate the combined weight
% ?- query(CombinedWeight).
%query(CombinedWeight).