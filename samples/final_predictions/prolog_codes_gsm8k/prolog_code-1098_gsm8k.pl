% Define the rule to calculate the total cost of the party
calculate_party_cost(TotalCost) :-
Classmates = 25,            % Assumed atom: Number of classmates
DanceClassGirls = 7,        % Assumed atom: Number of girls in dance class
FamilyMembers = 13,         % Assumed atom: Number of family members
CannotCome = 4,             % Assumed atom: Number of people who cannot come
TotalGuests is Classmates + DanceClassGirls + FamilyMembers - CannotCome,
AdditionalGuests is max(0, TotalGuests - 20),
AdditionalCost is AdditionalGuests * 6,
TotalCost is 125 + AdditionalCost.
% Query to find the total cost of the party
query_party_cost(TotalCost) :-
calculate_party_cost(TotalCost).
% Define a predicate that returns the correct numerical answer when queried
query(TotalCost) :-
query_party_cost(TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).