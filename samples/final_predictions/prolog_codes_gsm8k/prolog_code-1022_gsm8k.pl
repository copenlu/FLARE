% Define initial contributions
initial_contribution(neighbors, 500).
initial_contribution(online_fund, 1500).
% Calculate total amount collected
total_collected(Total) :-
initial_contribution(neighbors, NeighborsContribution),
initial_contribution(online_fund, OnlineFundContribution),
Total is NeighborsContribution + OnlineFundContribution.
% Calculate lawyer's contribution
lawyer_contribution(LawyerContribution) :-
total_collected(TotalCollected),
LawyerContribution is 3 * TotalCollected + 200.
% Query predicate to find the lawyer's contribution
query(LawyerContribution) :-
lawyer_contribution(LawyerContribution).
% Uncomment the line below to run the query
% query(LawyerContribution).
%query(LawyerContribution).