% Define the rule to calculate the number of cards the boy has
boy_cards(5).
% Define the rule to calculate the number of cards the brother has
brother_cards(BoyCards, BrotherCards) :-
BrotherCards is BoyCards - 3.
% Define the rule to calculate the total number of cards they have together
total_cards(BoyCards, BrotherCards, Total) :-
Total is BoyCards + BrotherCards.
% Query to find the total number of cards they have together
query_total_cards(Total) :-
boy_cards(BoyCards),
brother_cards(BoyCards, BrotherCards),
total_cards(BoyCards, BrotherCards, Total).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_cards(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).