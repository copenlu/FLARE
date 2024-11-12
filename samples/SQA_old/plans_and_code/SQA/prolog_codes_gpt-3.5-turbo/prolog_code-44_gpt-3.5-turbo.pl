% Assumed atom/predicate
admission_cost(25).
total_cost(Visits, TotalCost) :-
admission_cost(CostPerVisit),
TotalCost is Visits * CostPerVisit.
within_budget(Visits, Budget) :-
total_cost(Visits, TotalCost),
TotalCost =< Budget.
% Query predicate
query :- within_budget(20, 200).
%query.