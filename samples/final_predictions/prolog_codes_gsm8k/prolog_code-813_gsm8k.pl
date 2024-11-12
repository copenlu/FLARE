% Define regular hourly rate and special rate
regular_hourly_rate(20).
special_hourly_rate(Rate) :- regular_hourly_rate(RegularRate), Rate is RegularRate * 1.5.
% Calculate regular pay for 8 hours
regular_pay(RegularPay) :- regular_hourly_rate(Rate), RegularPay is Rate * 8.
% Calculate overtime pay for additional hours
overtime_pay(OvertimePay) :- special_hourly_rate(SpecialRate), OvertimeHours is 11 - 8, OvertimePay is SpecialRate * OvertimeHours.
% Calculate total pay for working 11 hours
total_pay(TotalPay) :- regular_pay(RegularPay), overtime_pay(OvertimePay), TotalPay is RegularPay + OvertimePay.
% Query to calculate Jamie's pay for working 11 hours
query(TotalPay) :-
total_pay(TotalPay).
% Uncomment the following line to run the query and calculate Jamie's pay for working 11 hours
% ?- query(TotalPay).
%query(TotalPay).