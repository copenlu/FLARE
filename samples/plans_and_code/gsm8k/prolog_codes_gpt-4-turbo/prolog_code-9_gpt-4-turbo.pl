% Predicate to calculate total earnings from mowing lawns
total_earnings(Lawns, Earnings) :-
Earnings is Lawns * 15.
% Predicate to calculate the cost of video games
cost_video_games(Games, Cost) :-
Cost is Games * 45.
% Predicate to calculate remaining money after purchasing video games
remaining_money(Earnings, Cost, Remaining) :-
Remaining is Earnings - Cost.
% Predicate to determine how many books can be bought with the remaining money
books_purchasable(Remaining, Books) :-
Books is Remaining // 5.
% Main predicate to calculate the number of books Kenny can buy
kenny_books(Lawns, Games, Books) :-
total_earnings(Lawns, Earnings),
cost_video_games(Games, Cost),
remaining_money(Earnings, Cost, Remaining),
books_purchasable(Remaining, Books).
% Query to find out how many books Kenny can buy after mowing 35 lawns and buying 5 video games
query(Books) :-
kenny_books(35, 5, Books).
% Uncomment the following line to run the query
% ?- query(Books).
%query(Books).