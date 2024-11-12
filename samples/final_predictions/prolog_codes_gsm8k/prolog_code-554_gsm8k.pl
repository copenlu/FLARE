% Define the initial share per boy
initial_share(18, 3).  % Assumed total amount shared and number of boys
% Calculate the total initial amount the eldest boy had
total_initial_amount(InitialShare, TotalInitialAmount) :-
InitialSharePerBoy is InitialShare / 3,
TotalInitialAmount is InitialSharePerBoy + 5 + 10.
% Calculate the amount the eldest boy had left after spending $8
amount_left_after_spending(TotalInitialAmount, AmountLeft) :-
AmountLeft is TotalInitialAmount - 8.
% Calculate the current amount the eldest boy has after tripling the amount left after spending $8
current_amount(AmountLeft, CurrentAmount) :-
CurrentAmount is AmountLeft * 3.
% Query predicate to find the current amount the eldest boy has
query(CurrentAmount) :-
initial_share(18, 3),  % Assumed total amount shared and number of boys
total_initial_amount(InitialShare, TotalInitialAmount),
amount_left_after_spending(TotalInitialAmount, AmountLeft),
current_amount(AmountLeft, CurrentAmount).
% Uncomment the line below to run the query
% query(CurrentAmount).
%query(CurrentAmount).