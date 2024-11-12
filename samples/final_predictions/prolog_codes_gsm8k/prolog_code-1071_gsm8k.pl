% Define the rule to calculate the share of the first person
calculate_share(FirstShare) :-
TotalAmount = 1920,
FirstShare + FirstShare + 80 + 2 * (FirstShare + 80) =:= TotalAmount,
solve(FirstShare).
% Define a helper predicate to solve the equation
solve(FirstShare) :-
FirstShare =:= (1920 - 80 - 2 * 80) / 4.
% Query to find the share of the first person
query(FirstShare) :-
calculate_share(FirstShare).
% Uncomment the following line to run the query
% ?- query(FirstShare).
%query(FirstShare).