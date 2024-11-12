% Define the value of each bottle cap
bottle_cap_value(0.25).
% Calculate the total money earned in a month
calculate_money(BottleCapsPerDay, DaysInMonth, TotalMoney) :-
TotalBottleCaps is BottleCapsPerDay * DaysInMonth,
bottle_cap_value(ValuePerCap),
TotalMoney is TotalBottleCaps * ValuePerCap.
% Query to calculate the total money earned in a 30-day month
query(TotalMoney) :-
calculate_money(10, 30, TotalMoney).
% Uncomment the following line to run the query and calculate the total money earned in a 30-day month
% ?- query(TotalMoney).
%query(TotalMoney).