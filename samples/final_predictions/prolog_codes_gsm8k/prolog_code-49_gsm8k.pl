% Define the rule to calculate the total amount spent on ties
total_spent_on_ties(TotalSpent) :-
CostBlueTie = 40,                   % Cost of each blue tie is $40
TotalSpentOnBlueTies = 200,         % Total amount spent on blue ties is $200
NumBlueTies is TotalSpentOnBlueTies / CostBlueTie,  % Calculate the number of blue ties
NumRedTies is NumBlueTies * 2,      % Calculate the number of red ties (twice the number of blue ties)
TotalCostBlueTies is NumBlueTies * CostBlueTie,  % Calculate the total cost of blue ties
CostRedTie is CostBlueTie * 1.5,    % Cost of each red tie is 50% more than blue ties
TotalCostRedTies is NumRedTies * CostRedTie,  % Calculate the total cost of red ties
TotalSpent is TotalCostBlueTies + TotalCostRedTies.  % Calculate the total amount spent on ties
% Query to find the total amount spent on ties
query_total_spent_on_ties(TotalSpent) :-
total_spent_on_ties(TotalSpent).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_spent_on_ties(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).