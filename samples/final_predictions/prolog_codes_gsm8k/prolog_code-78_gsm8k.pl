% Define the rule to calculate the number of bags of dog food used in the first year
bags_of_dog_food_used(NumberOfBags) :-
DaysInYear is 365,              % Assumed atom: Number of days in a year
CupsPerBag is 110,               % Assumed atom: Number of cups in each bag
TotalCupsForFirst180Days is 1 * 180,
TotalCupsForRemainingDays is 2 * (DaysInYear - 180),
TotalCupsForYear is TotalCupsForFirst180Days + TotalCupsForRemainingDays,
NumberOfBags is ceil(TotalCupsForYear / CupsPerBag).
% Define a predicate that returns the correct numerical answer when queried
query(NumberOfBags) :-
bags_of_dog_food_used(NumberOfBags).
% Uncomment the following line to run the query
% ?- query(NumberOfBags).
%query(NumberOfBags).