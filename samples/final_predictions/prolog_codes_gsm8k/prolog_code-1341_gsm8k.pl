% Define the amounts raised by each girl based on the given relationships
amount_raised_alexandra(430).
amount_raised_kim(Amount) :- amount_raised_alexandra(AlexandraAmount), Amount is AlexandraAmount + 320.
amount_raised_sarah(300).
amount_raised_maryam(Amount) :- amount_raised_sarah(SarahAmount), Amount is SarahAmount + 400.
% Define a rule to calculate the total amount raised by all girls
total_amount_raised(Total) :-
amount_raised_alexandra(AlexandraAmount),
amount_raised_kim(KimAmount),
amount_raised_sarah(SarahAmount),
amount_raised_maryam(MaryamAmount),
Total is AlexandraAmount + KimAmount + SarahAmount + MaryamAmount.
% Define a query predicate to find the total amount raised by all girls
query(Total) :-
total_amount_raised(Total).
% Uncomment the line below to run the query
% ?- query(Total).
%query(Total).