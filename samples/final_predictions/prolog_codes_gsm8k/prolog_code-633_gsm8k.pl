% Define the rule to calculate the number of days to sell all the meat
days_to_sell_meat(WeightOfBull, AmountSoldPerDay, Days) :-
TotalAmountSoldPerDay is AmountSoldPerDay * 10, % Prince works 10 hours a day
Days is WeightOfBull / TotalAmountSoldPerDay.
% Query to find the number of days to sell all the meat from the bull
query_days_to_sell_meat(Days) :-
days_to_sell_meat(750, 15, Days). % Given values: Weight of bull = 750kg, Amount sold per hour = 15kg
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_days_to_sell_meat(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).