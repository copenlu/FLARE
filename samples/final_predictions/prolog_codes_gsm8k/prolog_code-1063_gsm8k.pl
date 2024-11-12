% Predicate to calculate the total cost of Parmesan cheese
% Params: PricePerPound, Pounds, TotalCost
total_cost_parmesan(PricePerPound, Pounds, TotalCost) :-
TotalCost is PricePerPound * Pounds.
% Predicate to calculate the total cost of Mozzarella cheese
% Params: PricePerPound, Pounds, TotalCost
total_cost_mozzarella(PricePerPound, Pounds, TotalCost) :-
TotalCost is PricePerPound * Pounds.
% Predicate to calculate the remaining cash after the cheese purchase
% Params: InitialCash, ParmesanCost, MozzarellaCost, RemainingCash
remaining_cash(InitialCash, ParmesanCost, MozzarellaCost, RemainingCash) :-
RemainingCash is InitialCash - ParmesanCost - MozzarellaCost.
% Main predicate to compute the remaining cash after buying cheese
% Params: RemainingCash
calculate_remaining_cash(RemainingCash) :-
% Constants
PriceParmesan = 11,  % Price per pound of Parmesan cheese
PoundsParmesan = 2,  % Pounds of Parmesan cheese bought
PriceMozzarella = 6,  % Price per pound of Mozzarella cheese
PoundsMozzarella = 3,  % Pounds of Mozzarella cheese bought
InitialCash = 50,  % Initial cash
% Calculate total cost of Parmesan and Mozzarella cheese
total_cost_parmesan(PriceParmesan, PoundsParmesan, ParmesanCost),
total_cost_mozzarella(PriceMozzarella, PoundsMozzarella, MozzarellaCost),
% Calculate remaining cash after the purchase
remaining_cash(InitialCash, ParmesanCost, MozzarellaCost, RemainingCash).
% Query predicate to get the remaining cash after buying cheese
query(RemainingCash) :-
calculate_remaining_cash(RemainingCash).
% Uncomment the following line to run the query
% query(RemainingCash).
%query(RemainingCash).