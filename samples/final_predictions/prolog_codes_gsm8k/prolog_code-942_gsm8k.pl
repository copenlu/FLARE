% Define the rule to calculate the total profit
calculate_profit(TotalProfit) :-
NumStudents = 30,                   % Assumed number of students
AvgLollipopsPerStudent = 10,        % Assumed average number of lollipops sold per student
SellingPrice = 0.8,                 % Selling price per lollipop
CostPrice = 0.5,                    % Cost price per lollipop
TotalRevenue is NumStudents * AvgLollipopsPerStudent * SellingPrice,
TotalCost is NumStudents * AvgLollipopsPerStudent * CostPrice,
TotalProfit is TotalRevenue - TotalCost.
% Query to find the total profit made by the class
query_total_profit(TotalProfit) :-
calculate_profit(TotalProfit).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_profit(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).