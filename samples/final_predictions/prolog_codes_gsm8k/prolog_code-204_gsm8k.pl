% Define the payment rates for each publisher
payment_per_publisher(a, 5).
payment_per_publisher(b, 10).
% Calculate total payment for a specific publisher
total_payment_per_publisher(Publisher, TotalPayment) :-
payment_per_publisher(Publisher, RatePerSentence),
TotalPayment is RatePerSentence * 500. % 500 sentences edited for each publisher
% Calculate total payment per week
total_payment_per_week(TotalPayment) :-
total_payment_per_publisher(a, PaymentA),
total_payment_per_publisher(b, PaymentB),
TotalPayment is PaymentA + PaymentB.
% Define a query predicate to find out how much Mark makes in a week
query(TotalPayment) :-
total_payment_per_week(TotalPayment).
% Uncomment the line below to run the query in SWI-Prolog
% ?- query(TotalPayment).
%query(TotalPayment).