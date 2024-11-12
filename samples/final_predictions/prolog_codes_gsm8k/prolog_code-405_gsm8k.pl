% Predicate to calculate the total number of cards Erica initially had
initial_cards(Made, DadBrought, Total) :-
Total is Made + DadBrought.
% Predicate to calculate the number of cards Erica has left after passing out cards
remaining_cards(Total, PassedOutClassmates, PassedOutFamily, Remaining) :-
Remaining is Total - PassedOutClassmates - PassedOutFamily.
% Predicate to calculate the total number of cards Erica now has after receiving cards
final_cards(Remaining, Received, TotalCards) :-
TotalCards is Remaining + Received.
% Main predicate to calculate the total number of Valentine's Day cards Erica now has
valentines_cards(Made, DadBrought, PassedOutClassmates, PassedOutFamily, Received, TotalCards) :-
initial_cards(Made, DadBrought, Total),
remaining_cards(Total, PassedOutClassmates, PassedOutFamily, Remaining),
final_cards(Remaining, Received, TotalCards).
% Query to find out how many Valentine's Day cards Erica now has
query(TotalCards) :-
valentines_cards(20, 2 * 15, 24, 5, 17, TotalCards).
% Uncomment the following line to run the query
% ?- query(TotalCards).
%query(TotalCards).