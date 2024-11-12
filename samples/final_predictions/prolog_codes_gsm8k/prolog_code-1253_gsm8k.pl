% Define a predicate to calculate the total cost of a phone call based on changing rates
call_cost(CallDuration, TotalCost) :-
(CallDuration =< 16 ->
Cost1 is CallDuration * 0.25,
Cost2 is 0
;
Cost1 is 16 * 0.25,
RemainingMinutes is CallDuration - 16,
Cost2 is RemainingMinutes * 0.20
),
TotalCost is Cost1 + Cost2.
% Define a query predicate to find out the total cost of a 36-minute phone call
query(TotalCost) :-
% Calculate the cost of a 36-minute call with changing rates
call_cost(36, TotalCost).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalCost).
%query(TotalCost).