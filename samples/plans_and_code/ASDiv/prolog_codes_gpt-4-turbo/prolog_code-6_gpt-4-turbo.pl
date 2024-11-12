% Define how much Sara spent
total_spent_by_sara(ShoesCost, DressCost, TotalSpent) :-
TotalSpent is ShoesCost + DressCost.
% Define Rachel's budget as twice what Sara spent
budget_for_rachel(SaraSpent, RachelBudget) :-
RachelBudget is 2 * SaraSpent.
% Predicate to encapsulate the entire calculation and output Rachel's budget
calculate_rachels_budget(RachelBudget) :-
total_spent_by_sara(50, 200, SaraSpent),  % Costs are given in the problem
budget_for_rachel(SaraSpent, RachelBudget).
% Query to find the budget Rachel should plan for
query(RachelBudget) :-
calculate_rachels_budget(RachelBudget).
% Uncomment the following line to run the query
% ?- query(RachelBudget).
%query(RachelBudget).