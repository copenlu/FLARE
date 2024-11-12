% Define the probability of winning for each ticket
probability_of_winning(ticket1, 0.20).
probability_of_winning(ticket2, Probability2) :-
probability_of_winning(ticket1, Probability1),
Probability2 is 3 * Probability1.
% Define the overall probability that both tickets are winners
overall_probability_of_both_tickets(Probability1, Probability2, OverallProbability) :-
OverallProbability is Probability1 * Probability2.
% Main predicate to compute the overall probability that both tickets are winners
% Params: OverallProbability
calculate_overall_probability(OverallProbability) :-
% Calculate the probabilities of winning for each ticket
probability_of_winning(ticket1, Probability1),
probability_of_winning(ticket2, Probability2),
% Calculate the overall probability that both tickets are winners
overall_probability_of_both_tickets(Probability1, Probability2, OverallProbability).
% Query predicate to get the overall probability that both tickets are winners
query(OverallProbability) :-
calculate_overall_probability(OverallProbability).
% Uncomment the following line to run the query
% query(OverallProbability).
%query(OverallProbability).