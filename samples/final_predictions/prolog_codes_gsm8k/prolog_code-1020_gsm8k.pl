% Define constants
cost_trousers(30).
amount_mother(6).
% Calculate Adam's contribution from savings
calculate_contribution(Contribution) :-
cost_trousers(Cost),
amount_mother(MotherAmount),
FatherAmount is MotherAmount * 2,
TotalAmountReceived is MotherAmount + FatherAmount,
Contribution is Cost - TotalAmountReceived.
% Query to calculate Adam's contribution from savings
query(Contribution) :-
calculate_contribution(Contribution).
% Uncomment the following line to run the query and calculate Adam's contribution
% ?- query(Contribution).
%query(Contribution).