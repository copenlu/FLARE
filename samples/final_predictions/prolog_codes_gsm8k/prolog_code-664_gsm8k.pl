% Define the rule to calculate the total number of cupcakes to buy
total_cupcakes_to_buy(TotalCupcakes) :-
TotalPeople is 1 + 1 + 25, % Howie, teacher, and classmates
TotalCupcakes is TotalPeople * 2. % Each person gets one vanilla and one chocolate cupcake
% Query to find the total number of cupcakes Howie should buy
query(TotalCupcakes) :-
total_cupcakes_to_buy(TotalCupcakes).
% Uncomment the following line to run the query
% ?- query(TotalCupcakes).
%query(TotalCupcakes).