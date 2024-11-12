% Define the rule to calculate the total amount of money raised
total_money_raised(BrowniesSold, CheesecakesSold, TotalAmount) :-
BrowniesAmount is BrowniesSold * 3,      % Calculate the amount raised from selling brownies
CheesecakesAmount is CheesecakesSold * 4, % Calculate the amount raised from selling cheesecakes
TotalAmount is BrowniesAmount + CheesecakesAmount. % Calculate the total amount raised
% Query to find the total amount of money raised by selling 43 brownies and 23 cheesecakes
query_total_money_raised(TotalAmount) :-
total_money_raised(43, 23, TotalAmount).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_money_raised(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).