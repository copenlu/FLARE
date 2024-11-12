% Define the initial number of lollipops
initial_lollipops(24).
% Define the predicate to eat lollipops
eat_lollipops(InitialCount, NumEaten, NewCount) :-
NewCount is InitialCount - NumEaten.
% Define the predicate to pass lollipops
pass_lollipops(InitialCount, NumPassed, NewCount) :-
NewCount is InitialCount - NumPassed.
% Define the predicate to buy lollipops
buy_lollipops(InitialCount, NumBought, NewCount) :-
NewCount is InitialCount + NumBought.
% Define the final_lollipops predicate to calculate the final count
final_lollipops(FinalCount) :-
initial_lollipops(Initial),
eat_lollipops(Initial, 2, AfterEating),
pass_lollipops(AfterEating, 14, AfterPassing),
buy_lollipops(AfterPassing, 2*14, AfterBuying),
eat_lollipops(AfterBuying, 3, AfterNight),
eat_lollipops(AfterNight, 2, FinalCount).
% Query predicate to run the program and get the result
query(FinalCount) :-
final_lollipops(FinalCount).
% Uncomment the following line to run the query
% ?- query(FinalCount).
%query(FinalCount).