% Define a predicate to calculate the remaining cost
% Params: TotalCost, AmountReceived, RemainingCost
remaining_cost(TotalCost, AmountReceived, RemainingCost) :-
RemainingCost is TotalCost - AmountReceived.
% Define a predicate to calculate the monthly payment amount
% Params: RemainingCost, MonthlyPayment
monthly_payment(RemainingCost, MonthlyPayment) :-
MonthlyPayment is 0.1 * RemainingCost.
% Assumed atom/predicate
total_cost(3000).  % Total cost of the bedroom set
amount_received(1000).  % Amount received from selling old bedroom
% Query predicate to find the monthly payment amount
query(MonthlyPayment) :-
total_cost(TotalCost),
amount_received(AmountReceived),
remaining_cost(TotalCost, AmountReceived, RemainingCost),
monthly_payment(RemainingCost, MonthlyPayment).
% Uncomment the following line to run the query
% ?- query(MonthlyPayment).
%query(MonthlyPayment).