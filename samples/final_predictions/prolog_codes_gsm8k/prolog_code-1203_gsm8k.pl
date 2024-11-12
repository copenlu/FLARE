% Define the initial amount withdrawn and the value of a 20 dollar bill
% Assumed atom/predicate
initial_amount_withdrawn(1000).
value_of_20_dollar_bill(20).
% Calculate the total number of 20 dollar bills initially
% Params: TotalAmount, ValueOfBill, TotalBills
total_bills_initially(TotalAmount, ValueOfBill, TotalBills) :-
TotalBills is TotalAmount // ValueOfBill.
% Determine the number of bills after losing 10
% Params: TotalBillsInitially, BillsLost, RemainingBills
remaining_bills_after_loss(TotalBillsInitially, BillsLost, RemainingBills) :-
RemainingBills is TotalBillsInitially - BillsLost.
% Calculate the number of bills left after paying a bill with half of the remaining bills
% Params: RemainingBills, RemainingBillsAfterPayment
remaining_bills_after_payment(RemainingBills, RemainingBillsAfterPayment) :-
RemainingBillsAfterPayment is RemainingBills // 2.
% Triple the amount of money
% Params: Amount, TripledAmount
triple_amount(Amount, TripledAmount) :-
TripledAmount is Amount * 3.
% Convert the total amount to 5 dollar bills
% Params: TotalAmount, ValueOfBill, TotalFiveDollarBills
total_five_dollar_bills(TotalAmount, ValueOfBill, TotalFiveDollarBills) :-
TotalFiveDollarBills is TotalAmount // ValueOfBill.
% Main predicate to compute the number of 5 dollar bills Thomas has
% Params: TotalFiveDollarBills
calculate_five_dollar_bills(TotalFiveDollarBills) :-
initial_amount_withdrawn(InitialAmount),
value_of_20_dollar_bill(ValueOfBill),
total_bills_initially(InitialAmount, ValueOfBill, TotalBillsInitially),
remaining_bills_after_loss(TotalBillsInitially, 10, RemainingBills),
remaining_bills_after_payment(RemainingBills, RemainingBillsAfterPayment),
triple_amount(RemainingBillsAfterPayment, TripledAmount),
total_five_dollar_bills(TripledAmount, 5, TotalFiveDollarBills).
% Query predicate to get the number of 5 dollar bills Thomas has
query(TotalFiveDollarBills) :-
calculate_five_dollar_bills(TotalFiveDollarBills).
% Uncomment the following line to run the query
% query(TotalFiveDollarBills).
%query(TotalFiveDollarBills).