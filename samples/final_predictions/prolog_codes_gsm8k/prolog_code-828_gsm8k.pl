% Define the amount of tea consumed by each group of students
tea_consumed_by_four_students(TeaConsumed) :-
TeaConsumed is 4 * 1.5.
tea_consumed_by_sixteen_students(TeaConsumed) :-
TeaConsumed is 16 * 2.
% Calculate the initial amount of tea in gallons
initial_tea_amount(InitialAmountInGallons) :-
tea_consumed_by_four_students(TeaConsumedByFour),
tea_consumed_by_sixteen_students(TeaConsumedBySixteen),
TotalConsumed is TeaConsumedByFour + TeaConsumedBySixteen,
TeaLeft = 10, % 10 quarts of tea left after the party
InitialAmount = TeaLeft + TotalConsumed,
InitialAmountInGallons is InitialAmount / 4. % Convert quarts to gallons
% Query to find the initial amount of tea in gallons
query(InitialAmountInGallons) :-
initial_tea_amount(InitialAmountInGallons).
% Uncomment the following line to run the query and calculate the initial amount of tea in gallons
% ?- query(InitialAmountInGallons).
%query(InitialAmountInGallons).