% Define the number of cupcakes Paul has
cupcakes(chocolate, 8).
cupcakes(toffee, 40).
% Calculate the total cupcakes Paul has
total_cupcakes(Total) :-
cupcakes(chocolate, ChocCupcakes),
cupcakes(toffee, ToffeeCupcakes),
Total is ChocCupcakes + ToffeeCupcakes.
% Calculate the number of cupcakes Paul still needs to buy
calculate_cupcakes_needed(Required, StillNeeds) :-
total_cupcakes(TotalCupcakes),
StillNeeds is Required - TotalCupcakes.
% Query to calculate how many more cupcakes Paul needs to buy
query(StillNeeds) :-
RequiredCupcakes = 63,  % Total cupcakes required for the party
calculate_cupcakes_needed(RequiredCupcakes, StillNeeds).
% Uncomment the following line to run the query and calculate the number of cupcakes Paul needs to buy
% ?- query(StillNeeds).
%query(StillNeeds).