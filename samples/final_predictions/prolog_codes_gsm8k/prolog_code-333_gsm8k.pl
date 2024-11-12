% Define the rule to calculate the number of junior programmers
junior_programmers(TotalEmployees, JuniorProgrammers) :-
JuniorProgrammers is round((2/5) * TotalEmployees).
% Define the rule to calculate the number of senior programmers
senior_programmers(TotalEmployees, JuniorProgrammers, SeniorProgrammers) :-
SeniorProgrammers is TotalEmployees - JuniorProgrammers.
% Define the rule for the monthly payment of junior programmers
payment_junior_programmers(2000).
% Define the rule for the monthly payment of senior programmers
payment_senior_programmers(SeniorPayment) :-
SeniorPayment is 2000 + 400.
% Define the rule to calculate the total monthly payment to all programmers
total_payment(TotalEmployees, TotalPayment) :-
junior_programmers(TotalEmployees, JuniorProgrammers),
senior_programmers(TotalEmployees, JuniorProgrammers, SeniorProgrammers),
payment_junior_programmers(JuniorPayment),
payment_senior_programmers(SeniorPayment),
TotalPayment is (JuniorProgrammers * JuniorPayment) + (SeniorProgrammers * SeniorPayment).
% Query predicate to run the program and get the result
query(TotalPayment) :-
total_payment(100, TotalPayment).
% Uncomment the following line to run the query
% ?- query(TotalPayment).
%query(TotalPayment).