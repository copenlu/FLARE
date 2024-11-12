% Define the number of sacks of rice and the weight per sack
sacks_of_rice(20). % Assumed atom for the number of sacks of rice
kilograms_per_sack(25). % Assumed atom for the weight of rice per sack
% Calculate the total amount of rice purchased
total_rice_purchased(TotalRice) :-
sacks_of_rice(Sacks),
kilograms_per_sack(Weight),
TotalRice is Sacks * Weight.
% Calculate the amount of rice given to Goldy's cousin
rice_given_to_cousin(RiceToCousin) :-
sacks_of_rice(CousinSacks), % Assumed atom for the number of sacks given to cousin
kilograms_per_sack(Weight),
RiceToCousin is CousinSacks * Weight.
% Calculate the amount of rice given to Goldy's brother
rice_given_to_brother(RiceToBrother) :-
sacks_of_rice(BrotherSacks), % Assumed atom for the number of sacks given to brother
kilograms_per_sack(Weight),
RiceToBrother is BrotherSacks * Weight.
% Query predicate to find the total amount of rice given to Goldy's cousin and brother
query(RiceToCousin, RiceToBrother) :-
rice_given_to_cousin(RiceToCousin),
rice_given_to_brother(RiceToBrother).
% Uncomment the line below to run the query
% query(RiceToCousin, RiceToBrother).
%query(RiceToCousin, RiceToBrother).