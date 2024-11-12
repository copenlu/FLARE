% Define the rule to calculate the total amount spent by the baseball coach
total_spent_baseball(NumBaseballs, TotalBaseball) :-
TotalBaseball is NumBaseballs * 3.
% Define the rule to calculate the total amount spent by the basketball coach
total_spent_basketball(NumBasketballs, TotalBasketball) :-
TotalBasketball is NumBasketballs * 14.
% Define the rule to calculate the difference in spending between the coaches
difference_spent(BaseballSpent, BasketballSpent, Difference) :-
Difference is BasketballSpent - BaseballSpent.
% Calculate the total amounts spent and the difference
total_spent_baseball(9, BaseballSpent),
total_spent_basketball(8, BasketballSpent),
difference_spent(BaseballSpent, BasketballSpent, Difference).
% Define a predicate that returns the correct numerical answer when queried
query(Difference) :-
total_spent_baseball(9, BaseballSpent),
total_spent_basketball(8, BasketballSpent),
difference_spent(BaseballSpent, BasketballSpent, Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).