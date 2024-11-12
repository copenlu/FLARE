% Define the amount received for the first tooth
amount_first_tooth(5).
% Define the amount received for the next three teeth
amount_next_three_teeth(3).  % Assumed $1.00 per tooth for the next three teeth
% Define the amount received for the last two teeth (half the amount of the previous three teeth)
amount_last_two_teeth(Amount) :-
TotalPreviousThree is 1 + 1 + 1,  % Total amount received for the previous three teeth
Amount is TotalPreviousThree / 2.
% Define the total amount received by summing the amounts for all teeth
total_amount_received(Total) :-
amount_first_tooth(First),
amount_next_three_teeth(NextThree),
amount_last_two_teeth(LastTwo),
Total is First + NextThree + LastTwo.
% Query predicate to run the program and get the result
query(Total) :-
total_amount_received(Total).
% Uncomment the following line to run the query
% ?- query(Total).
%query(Total).