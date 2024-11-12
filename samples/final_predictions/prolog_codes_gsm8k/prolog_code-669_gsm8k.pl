% Define the rule to calculate the amount withheld from Sally's wage
amount_withheld(StartingBalance, EndingBalance, WeeklyWage, AmountWithheld) :-
AmountReceived is EndingBalance - StartingBalance,  % Calculate the amount Sally received during the week
AmountWithheld is WeeklyWage - AmountReceived.      % Calculate the amount withheld from Sally's wage
% Query to find the amount withheld from Sally's wage
query_amount_withheld(AmountWithheld) :-
amount_withheld(200, 420, 300, AmountWithheld).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_amount_withheld(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).