% Define a rule to calculate the total amount due after a certain number of months
total_amount_due(Principal, Months, TotalAmount) :-
calculate_total_amount(Principal, Months, 0, TotalAmount).
% Base case for calculating the total amount due after a certain number of months
calculate_total_amount(Principal, 0, AccInterest, TotalAmount) :-
TotalAmount is Principal + AccInterest.
% Recursive case for calculating the total amount due after a certain number of months
calculate_total_amount(Principal, Months, AccInterest, TotalAmount) :-
NewInterest is Principal * 0.02,
NewPrincipal is Principal + NewInterest,
NewAccInterest is AccInterest + NewInterest,
NewMonths is Months - 1,
calculate_total_amount(NewPrincipal, NewMonths, NewAccInterest, TotalAmount).
% Define a query predicate to find out the total amount Mandy should give to Benedict after 3 months
query(TotalAmount) :-
% Principal amount of $100 and 3 months
total_amount_due(100, 3, TotalAmount).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalAmount).
%query(TotalAmount).