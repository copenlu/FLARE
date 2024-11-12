% Define the total amount of money Johnny has
total_amount(Allowance, Extra, Total) :-
Total is Allowance + Extra.
% Define the value of the investment after it triples
investment_value(InitialAmount, FinalAmount) :-
FinalAmount is InitialAmount * 3.
% Calculate the total amount and investment value for Johnny
calculate_final_amount(FinalAmount) :-
total_amount(20, 10, TotalAmount),  % Johnny's allowance and extra amount
investment_value(TotalAmount, FinalAmount).  % Value of the investment after a year
% Query to find out how much money Johnny has after a year
query(FinalAmount) :-
calculate_final_amount(FinalAmount).
% Uncomment the following line to run the query
% ?- query(FinalAmount).
%query(FinalAmount).