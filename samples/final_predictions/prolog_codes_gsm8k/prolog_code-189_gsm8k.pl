% Define the probability of rolling a number greater than 3
probability_greater_than_3(Probability) :-
Probability is (6 - 3) / 6.
% Define the probability of rolling two even numbers in a row
probability_two_even_numbers(Probability) :-
Probability is (1/2) * (1/2).
% Calculate the difference in likelihood as a percentage
likelihood_difference(DifferencePercentage) :-
probability_greater_than_3(Prob1),
probability_two_even_numbers(Prob2),
Difference is Prob1 - Prob2,
DifferencePercentage is Difference * 100.
% Define a query predicate to find the difference in likelihood as a percentage
query(DifferencePercentage) :-
likelihood_difference(DifferencePercentage).
% Uncomment the line below to run the query in SWI-Prolog
% ?- query(DifferencePercentage).
%query(DifferencePercentage).