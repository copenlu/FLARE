% Define the rule to calculate the total number of bags sold
total_bags_sold(TotalApples, ApplesPerBag, TotalBags) :-
TotalBags is TotalApples / ApplesPerBag.
% Define the rule to calculate the total revenue earned
total_revenue(TotalBags, PricePerBag, TotalRevenue) :-
TotalRevenue is TotalBags * PricePerBag.
% Query to find the total revenue earned by the orchard
query_total_revenue(TotalRevenue) :-
TotalApples = 2000,  % Total number of apples sold
ApplesPerBag = 10,   % Number of apples in each bag
PricePerBag = 5,     % Price per bag
total_bags_sold(TotalApples, ApplesPerBag, TotalBags),
total_revenue(TotalBags, PricePerBag, TotalRevenue).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_revenue(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).