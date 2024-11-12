% Define the predicate to calculate the total amount of money
total_money(MaggieMoney, RizaMoney, TotalMoney) :-
MaggieMoney is 4 * 60,  % Maggie had 4 times the amount Riza had
RizaMoney is 3 * 60,   % Riza had 3 times the amount Maggie had
TotalMoney is MaggieMoney + RizaMoney.
% Define the predicate to calculate the amounts spent by Maggie and Riza
amount_spent(MaggieSpent, RizaSpent) :-
MaggieSpent is 60 - (1/4) * 60,  % Maggie spent a quarter of her money
RizaSpent is 60 - (1/3) * 60.   % Riza spent one-third of her money
% Define the predicate to calculate the remaining money for Maggie, Riza, and the total amount left
money_left(MaggieMoney, RizaMoney, MaggieSpent, RizaSpent, MaggieLeft, RizaLeft, TotalLeft) :-
MaggieLeft is MaggieMoney - MaggieSpent,
RizaLeft is RizaMoney - RizaSpent,
TotalLeft is MaggieLeft + RizaLeft.
% Query to find out how much money Maggie and Riza have left
query_money_left(MaggieLeft, RizaLeft, TotalLeft) :-
total_money(_, _, _),  % Calculate the total money
amount_spent(_, _),    % Calculate the amounts spent
money_left(_, _, _, _, MaggieLeft, RizaLeft, TotalLeft).  % Calculate the remaining money
% Define a predicate that returns the correct numerical answer when queried
query(MaggieLeft, RizaLeft, TotalLeft) :-
query_money_left(MaggieLeft, RizaLeft, TotalLeft).
% Uncomment the following line to run the query
% ?- query(MaggieLeft, RizaLeft, TotalLeft).
%query(MaggieLeft, RizaLeft, TotalLeft).