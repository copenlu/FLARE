% Define constants for the value of a quarter and a twenty
value(quarter, 0.25).
value(twenty, 20).
% Calculate total value of the quarters
total_quarters_value(NumQuarters, TotalValue) :-
value(quarter, QuarterValue),
TotalValue is NumQuarters * QuarterValue.
% Calculate total value of the twenties
total_twenties_value(NumTwenties, TotalValue) :-
value(twenty, TwentyValue),
TotalValue is (3/5) * NumTwenties * TwentyValue.
% Calculate total amount paid for lunch
total_amount_paid(TotalAmount) :-
total_quarters_value(140, QuartersValue),
total_twenties_value(10, TwentiesValue),
TotalAmount is QuartersValue + TwentiesValue.
% Query to calculate the total amount Carrie paid for lunch
query(TotalAmount) :-
total_amount_paid(TotalAmount).
% Uncomment the following line to run the query and calculate the total amount paid for lunch
% ?- query(TotalAmount).
%query(TotalAmount).