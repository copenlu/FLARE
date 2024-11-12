% Define the bet amount per orange
bet_amount_per_orange(10).
% Calculate the total amount of money given up by Stetson
calculate_money_given_up(TotalOrangesPicked, FractionEaten, TotalMoneyGivenUp) :-
OrangesEaten is TotalOrangesPicked * FractionEaten,
bet_amount_per_orange(BetAmount),
TotalMoneyGivenUp is OrangesEaten * BetAmount.
% Query to calculate the total amount of money Stetson gave up
query(TotalMoneyGivenUp) :-
TotalOrangesPicked = 60,  % Assumed atom/predicate
FractionEaten = 2/5,      % Assumed atom/predicate
calculate_money_given_up(TotalOrangesPicked, FractionEaten, TotalMoneyGivenUp).
% Uncomment the following line to run the query and calculate the total money given up by Stetson
% ?- query(TotalMoneyGivenUp).
%query(TotalMoneyGivenUp).