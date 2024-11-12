% Define the predicate to calculate the total amount received from selling the rope
% Params: Length of the rope, Price per meter, Total amount received
total_amount_received(Length, PricePerMeter, TotalAmount) :-
TotalAmount is Length * PricePerMeter.
% Define the predicate to calculate the total cost of buying a new rope
% Params: Length of the new rope, Price per meter, Total cost of the new rope
total_cost_new_rope(Length, PricePerMeter, TotalCost) :-
TotalCost is Length * PricePerMeter.
% Define the predicate to calculate the money left over after selling the rope and buying the new rope
% Params: Length of the rope, Selling price per meter, New rope price per meter, Money left over
money_left_over(Length, SellPrice, NewRopePrice, LeftOver) :-
total_amount_received(Length, SellPrice, AmountReceived),
total_cost_new_rope(Length, NewRopePrice, CostNewRope),
LeftOver is AmountReceived - CostNewRope.
% Query predicate to run the program and get the result
query(LeftOver) :-
money_left_over(20, 2, 1.5, LeftOver).
% Uncomment the following line to run the query
% ?- query(LeftOver).
%query(LeftOver).