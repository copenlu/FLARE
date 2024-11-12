% Predicate to calculate total earnings from selling cards
total_earnings(CardsSold, Earnings) :-
Earnings is CardsSold * 1.5.
% Predicate to calculate total spending on ticket and cash
total_spending(TicketCost, SpendingCash, TotalSpending) :-
TotalSpending is TicketCost + SpendingCash.
% Predicate to calculate the initial number of cards Kenny had
initial_cards(CardsSold, CardsKept, TotalCards) :-
TotalCards is CardsSold + CardsKept.
% Main predicate to calculate the initial number of cards Kenny had
kenny_cards(CardsSold, TicketCost, SpendingCash, TotalCards) :-
total_earnings(CardsSold, Earnings),
total_spending(TicketCost, SpendingCash, TotalSpending),
CardsKept is CardsSold / 3,
initial_cards(CardsSold, CardsKept, TotalCards),
Earnings - TotalSpending =:= TicketCost.
% Query to find out how many cards Kenny started with
query(TotalCards) :-
kenny_cards(_, 100, 50, TotalCards).
% Uncomment the following line to run the query
% ?- query(TotalCards).
%query(TotalCards).