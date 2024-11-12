% Define the predicate to calculate the total gifts bought for friends
total_gifts_for_friends(Total) :-
Total is 2 * 5 + 3 * 2.
% Define the predicate to calculate the total gifts bought including random gifts
total_gifts_bought(Total) :-
total_gifts_for_friends(FriendsGifts),
Total is FriendsGifts + 10.
% Query predicate to run the program and get the result
query(TotalGifts) :-
total_gifts_bought(TotalGifts).
% Uncomment the following line to run the query
% ?- query(TotalGifts).
%query(TotalGifts).