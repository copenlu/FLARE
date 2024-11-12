% Define the amount given by Sophia (1/5 of her initial amount)
amount_given_by_sophia(SophiaAmount) :-
SophiaInitialAmount is 100,  % Assumed initial amount for Sophia
SophiaAmount is SophiaInitialAmount / 5.
% Define the total amount Jack has after receiving money from Sophia
total_amount_jack_has(InitialAmount, SophiaAmount, TotalAmount) :-
TotalAmount is InitialAmount + SophiaAmount.
% Calculate the total amount Jack has now
calculate_total_amount_jack_has(TotalAmount) :-
amount_given_by_sophia(SophiaAmount),  % Calculate the amount given by Sophia
total_amount_jack_has(100, SophiaAmount, TotalAmount).  % Jack's initial amount is $100
% Query predicate to get the total amount Jack has now
query(TotalAmount) :-
calculate_total_amount_jack_has(TotalAmount).
% Uncomment the following line to run the query
% ?- query(TotalAmount).
%query(TotalAmount).