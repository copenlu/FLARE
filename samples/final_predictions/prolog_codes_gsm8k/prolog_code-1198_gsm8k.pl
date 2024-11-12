% Define the initial amounts of money Ronnie and Rissa received
initial_amounts(5, Rissa) :- Rissa is 3 * 5.  % Rissa received three times as much as Ronnie
% Calculate the remaining amount of money Rissa has
remaining_amount(Rissa, RemainingRissa) :-
RemainingRissa is Rissa * 4 / 5.  % Rissa is left with 4/5 of her money
% Calculate the amount Rissa gave to her little sister
amount_given_to_sister(Rissa, AmountGiven) :-
remaining_amount(Rissa, RemainingRissa),
AmountGiven is Rissa - RemainingRissa.
% Calculate the remaining amount of money Ronnie has
remaining_amount_ronnie(Ronnie, AmountGiven, RemainingRonnie) :-
RemainingRonnie is Ronnie - AmountGiven.
% Main predicate to compute the remaining amount of money Ronnie has
calculate_remaining_amount(RemainingRonnie) :-
initial_amounts(5, Rissa),  % Given that Ronnie received $5
amount_given_to_sister(Rissa, AmountGiven),
remaining_amount_ronnie(5, AmountGiven, RemainingRonnie).
% Query predicate to get the remaining amount of money Ronnie has
query(RemainingRonnie) :-
calculate_remaining_amount(RemainingRonnie).
% Uncomment the following line to run the query
% query(RemainingRonnie).
%query(RemainingRonnie).