% Define the total advertising cost for two years
total_advertising_cost(Year1Cost, Year2Cost, TotalCost) :-
Year2Cost is Year1Cost / 3,
TotalCost is Year1Cost + Year2Cost.
% Calculate the total advertising cost for two years
% Given Year1Cost = $15,000
% Year2Cost is one-third of Year1Cost
% Query: total_advertising_cost(15000, Year2Cost, TotalCost).
% Query predicate to run the program and get the result
query(TotalCost) :-
total_advertising_cost(15000, Year2Cost, TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).