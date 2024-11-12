% Define the rule to calculate the total amount of money in cents
calculate_total_money(TotalMoney) :-
TotalMoney is 25 * 8 + 10 * 6 + 5 * 14 + 1 * 15.  % Total money in cents
% Define the rule to calculate the number of gumballs Colby can buy
calculate_gumballs(TotalMoney, NumGumballs) :-
NumGumballs is TotalMoney // 5.  % Calculate the number of gumballs based on total money
% Query to find the number of gumballs Colby can buy
query(NumGumballs) :-
calculate_total_money(TotalMoney),
calculate_gumballs(TotalMoney, NumGumballs).
% Uncomment the following line to run the query
% ?- query(NumGumballs).
%query(NumGumballs).