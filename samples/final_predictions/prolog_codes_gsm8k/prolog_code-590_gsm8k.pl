% Define the rule to calculate the total number of muffin crayons Kate can make
total_muffin_crayons(TotalCrayonPieces, TotalMuffinCrayons) :-
TotalMuffinCrayons is TotalCrayonPieces / 8.
% Define the rule to calculate the total money Kate can make
total_money_made(TotalMuffinCrayons, MoneyMade) :-
MoneyMade is TotalMuffinCrayons * 1.50.
% Query to find the total money Kate can make
query_total_money_made(TotalMoneyMade) :-
TotalCrayonPieces is 3 * 64,  % 3 boxes of 64 crayons each
total_muffin_crayons(TotalCrayonPieces, TotalMuffinCrayons),
total_money_made(TotalMuffinCrayons, TotalMoneyMade).
% Define a predicate that returns the correct numerical answer when queried
query(TotalMoneyMade) :-
query_total_money_made(TotalMoneyMade).
% Uncomment the following line to run the query
% ?- query(TotalMoneyMade).
%query(TotalMoneyMade).