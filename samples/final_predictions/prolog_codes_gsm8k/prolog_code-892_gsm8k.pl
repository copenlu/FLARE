% Define the predicate to calculate Madeline's monthly contribution
% Params: TotalCost, MadelineContribution
madeline_contribution(TotalCost, MadelineContribution) :-
MadelineContribution is 0.6 * TotalCost.  % Madeline pays 60% of the total cost
% Define the predicate to calculate Keenan's monthly contribution
% Params: TotalCost, MadelineContribution, KeenanContribution
keenan_contribution(TotalCost, MadelineContribution, KeenanContribution) :-
KeenanContribution is TotalCost - MadelineContribution.  % Keenan pays the remaining amount
% Define the predicate to calculate Keenan's weekly spending
% Params: KeenanContribution, WeeklySpending
weekly_spending(KeenanContribution, WeeklySpending) :-
WeeklySpending is KeenanContribution / 4.  % Divide monthly contribution by 4 weeks
% Constants
TotalCost = 400.  % Total cost of groceries
% Calculate Madeline's monthly contribution
madeline_contribution(TotalCost, MadelineContribution),
% Calculate Keenan's monthly contribution
keenan_contribution(TotalCost, MadelineContribution, KeenanContribution),
% Calculate Keenan's weekly spending
weekly_spending(KeenanContribution, WeeklySpending).
% Query predicate to get Keenan's weekly spending
query(WeeklySpending) :-
weekly_spending(KeenanContribution, WeeklySpending).
% Uncomment the following line to run the query
% ?- query(WeeklySpending).
%query(WeeklySpending).