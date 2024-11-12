% Define Ali's initial amount and Leila's total amount
initial_amount(21).
leila_amount(100).
% Calculate the total amount Ali has after receiving half of Leila's money
calculate_total_money(TotalMoney) :-
initial_amount(AliInitial),
leila_amount(LeilaTotal),
HalfLeila is LeilaTotal / 2,
TotalMoney is AliInitial + HalfLeila.
% Query to calculate how much money Ali has after receiving half of Leila's money
query(TotalMoney) :-
calculate_total_money(TotalMoney).
% Uncomment the following line to run the query and calculate the total amount Ali has
% ?- query(TotalMoney).
%query(TotalMoney).