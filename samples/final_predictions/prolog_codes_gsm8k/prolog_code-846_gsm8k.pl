% Define the total number of cards
total_cards(341).
% Define the relationships between the number of cards each person has
cards_relationships(Becca, Smendrick, PJ) :-
Becca is Smendrick + 12,
Smendrick is 3 * PJ.
% Solve for the number of cards Becca has
solve_cards(Becca) :-
total_cards(Total),
cards_relationships(Becca, Smendrick, PJ),
Becca + Smendrick + PJ =:= Total.
% Query predicate to find the number of cards Becca has
query(Becca) :-
solve_cards(Becca).
% Uncomment the line below to run the query
% query(Becca).
%query(Becca).