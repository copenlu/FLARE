% Predicate to calculate total earnings
% Params: DailyPay, NumDays, TotalEarnings
total_earnings(DailyPay, NumDays, TotalEarnings) :-
TotalEarnings is DailyPay * NumDays.
% Predicate to calculate total parking expenses
% Params: DailyParkingFee, NumDays, TotalParkingExpenses
total_parking_expenses(DailyParkingFee, NumDays, TotalParkingExpenses) :-
TotalParkingExpenses is DailyParkingFee * NumDays.
% Predicate to calculate net earnings
% Params: TotalEarnings, TotalParkingExpenses, NetEarnings
net_earnings(TotalEarnings, TotalParkingExpenses, NetEarnings) :-
NetEarnings is TotalEarnings - TotalParkingExpenses.
% Predicate to calculate hourly pay after expenses
% Params: NetEarnings, TotalHours, HourlyPayAfterExpenses
hourly_pay_after_expenses(NetEarnings, TotalHours, HourlyPayAfterExpenses) :-
HourlyPayAfterExpenses is NetEarnings / TotalHours.
% Main predicate to compute Melissa's hourly pay after expenses
% Params: HourlyPayAfterExpenses
calculate_hourly_pay(HourlyPayAfterExpenses) :-
% Constants
DailyPay = 15,           % Assumed atom/predicate
DailyParkingFee = 3,     % Assumed atom/predicate
NumDays = 3,             % Assumed atom/predicate
DailyHours = 6,          % Assumed atom/predicate
% Calculate total earnings
total_earnings(DailyPay, NumDays, TotalEarnings),
% Calculate total parking expenses
total_parking_expenses(DailyParkingFee, NumDays, TotalParkingExpenses),
% Calculate net earnings
net_earnings(TotalEarnings, TotalParkingExpenses, NetEarnings),
% Calculate total hours spent
TotalHours is DailyHours * NumDays,
% Calculate hourly pay after expenses
hourly_pay_after_expenses(NetEarnings, TotalHours, HourlyPayAfterExpenses).
% Query predicate to get Melissa's hourly pay after expenses
query(HourlyPayAfterExpenses) :-
calculate_hourly_pay(HourlyPayAfterExpenses).
% Uncomment the following line to run the query
% query(HourlyPayAfterExpenses).
%query(HourlyPayAfterExpenses).