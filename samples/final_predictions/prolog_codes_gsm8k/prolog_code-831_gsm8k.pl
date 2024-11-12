% Define constants
total_earnings(105).
cost_per_branch(0.25).
days_in_week(7).
% Calculate the average number of branches climbed per day
calculate_branches_per_day(AvgBranchesPerDay) :-
total_earnings(TotalEarnings),
cost_per_branch(CostPerBranch),
days_in_week(Days),
TotalBranches is TotalEarnings / CostPerBranch,
AvgBranchesPerDay is TotalBranches / Days.
% Query to calculate the average number of branches climbed per day
query(AvgBranchesPerDay) :-
calculate_branches_per_day(AvgBranchesPerDay).
% Uncomment the following line to run the query and calculate the average branches climbed per day
% ?- query(AvgBranchesPerDay).
%query(AvgBranchesPerDay).