% Predicate to calculate the total amount needed to save
total_amount_needed(CurrentAmount, BikeCost, AmountNeeded) :-
AmountNeeded is BikeCost - CurrentAmount.
% Predicate to calculate the number of days needed to save the total amount
days_to_save(EarningsPerDay, AmountNeeded, Days) :-
Days is ceil(AmountNeeded / EarningsPerDay).
% Main predicate to calculate the number of days Mark needs to save
mark_savings(CurrentAmount, EarningsPerDay, BikeCost, Days) :-
total_amount_needed(CurrentAmount, BikeCost, AmountNeeded),
days_to_save(EarningsPerDay, AmountNeeded, Days).
% Query to find out how many days Mark needs to save to buy the bike
query(Days) :-
mark_savings(50, 10, 300, Days).
% Uncomment the following line to run the query
% ?- query(Days).
%query(Days).