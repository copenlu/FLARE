% Define the cost of staying for 12 hours (assumed known)
cost_12_hours(1000).
% Define the cost of staying for 24 hours (assumed known)
cost_24_hours(1600).
% Define the rule to calculate the savings by choosing the hourly rate after 12 hours
calculate_savings(Savings) :-
cost_12_hours(Cost12Hours),
cost_24_hours(Cost24Hours),
AdditionalHours is 10,  % Assumed number of additional hours beyond 12 hours
HourlyRate is 70,       % Assumed hourly rate
CostAfter12Hours is Cost12Hours + (AdditionalHours * HourlyRate),
Savings is Cost24Hours - CostAfter12Hours.
% Query to find the savings achieved by Cameron
query(Savings) :-
calculate_savings(Savings).
% Uncomment the line below to run the query
% ?- query(Savings).
%query(Savings).