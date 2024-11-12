% Define the rule to calculate the total amount paid for the streaming service by the end of the year
total_amount_paid(FirstHalfTotal, SecondHalfTotal, TotalAmount) :-
MonthlyCharge = 140,  % Assumed monthly charge
FirstHalfTotal is MonthlyCharge * 6,  % Calculate total amount paid for the first half of the year
SecondHalfTotal is (MonthlyCharge * 0.9) * 6,  % Calculate total amount paid for the second half of the year (10% less)
TotalAmount is FirstHalfTotal + SecondHalfTotal.  % Calculate total amount paid for the entire year
% Query to find the total amount paid by Aleena for the streaming service by the end of the year
query_total_amount_paid(TotalAmount) :-
total_amount_paid(FirstHalfTotal, SecondHalfTotal, TotalAmount).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_amount_paid(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).