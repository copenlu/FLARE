% Define the rule to calculate the total cost on the first day
total_cost_day1(NumPomegranates, PricePerPomegranate, Discount, TotalCost) :-
TotalCost is (NumPomegranates * PricePerPomegranate) - Discount.
% Define the rule to calculate the total cost on the second day
total_cost_day2(NumPomegranates, PricePerPomegranate, Discount, TotalCost) :-
TotalCost is (NumPomegranates * PricePerPomegranate) * (1 - Discount).
% Define the rule to find the price difference between the two days
price_difference(Day1Cost, Day2Cost, Difference) :-
Difference is abs(Day1Cost - Day2Cost).
% Query to find the price difference between the two days
query_price_difference(Difference) :-
total_cost_day1(20, 20, 2, Day1Cost),    % Clara's purchase on the first day
total_cost_day2(20, 30, 0.1, Day2Cost),  % Sheila's purchase on the second day
price_difference(Day1Cost, Day2Cost, Difference).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_price_difference(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).