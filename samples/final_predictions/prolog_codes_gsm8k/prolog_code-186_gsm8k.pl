% Define the relationship between the quantities of red roses and white carnations
red_roses_to_white_carnations(RedRoses, WhiteCarnations) :-
RedRoses is 4 * WhiteCarnations.
% Define the relationship between the quantities of pink calla lilies and white carnations
pink_calla_lilies_to_white_carnations(PinkCallaLilies, WhiteCarnations) :-
PinkCallaLilies is 5 * WhiteCarnations.
% Calculate the number of red roses Fred must deliver to satisfy Sandra's order
calculate_red_roses_to_deliver(RedRoses) :-
pink_calla_lilies_to_white_carnations(200, WhiteCarnations),  % Given 200 pink calla lilies
red_roses_to_white_carnations(RedRoses, WhiteCarnations).
% Define a query predicate to find out the number of red roses Fred must deliver
query(RedRoses) :-
calculate_red_roses_to_deliver(RedRoses).
% Uncomment the line below to run the query in SWI-Prolog
% ?- query(RedRoses).
%query(RedRoses).