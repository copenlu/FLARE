% Define the prices of a notebook and a ballpen
notebook_price(1.50).
ballpen_price(0.50).
% Define the rule to calculate the total cost
total_cost(NotebookPrice, BallpenPrice, NumNotebooks, NumBallpens, TotalCost) :-
NotebookCost is NotebookPrice * NumNotebooks,  % Calculate the cost of notebooks
BallpenCost is BallpenPrice * NumBallpens,     % Calculate the cost of ballpens
TotalCost is NotebookCost + BallpenCost.       % Calculate the total cost
% Query to find the total amount spent by William
query_total_cost(TotalCost) :-
total_cost(1.50, 0.50, 5, 1, TotalCost).  % Assuming William bought 5 notebooks and 1 ballpen
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_cost(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).