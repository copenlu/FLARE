% Define the rule to calculate the total cost of the dental work
total_cost(BasePrice, CrownCost, Deposit, TotalCost) :-
TotalCost is (BasePrice * 2) + CrownCost - Deposit.
% Define the rule to calculate the number of hours George needs to work
hours_to_work(TotalCost, HourlyWage, Hours) :-
Hours is ceil(TotalCost / HourlyWage).
% Query to find the number of hours George needs to work
query(Hours) :-
total_cost(2000, 500, 600, TotalCost),  % Given values for base price, crown cost, and deposit
hours_to_work(TotalCost, 15, Hours).     % George's hourly wage is $15
% Uncomment the following line to run the query
% ?- query(Hours).
%query(Hours).