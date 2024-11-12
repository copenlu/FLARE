% Predicate to calculate the total cost for the first 6 months at $8 per month
cost_first_six_months(Cost) :-
Cost is 6 * 8.
% Predicate to calculate the total cost for the next 8 months at $12 per month
cost_next_eight_months(Cost) :-
Cost is 8 * 12.
% Predicate to calculate the total cost for the remaining months at $14 per month
cost_remaining_months(Cost, Months) :-
Cost is Months * 14.
% Predicate to calculate the total cost for 2 years
total_cost_2_years(TotalCost) :-
cost_first_six_months(Cost1),
cost_next_eight_months(Cost2),
cost_remaining_months(Cost3, 10), % Assumed 10 months remaining after the first 14 months
TotalCost is Cost1 + Cost2 + Cost3.
% Query to find out the total cost for 2 years of the streaming service
query(TotalCost) :-
total_cost_2_years(TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).