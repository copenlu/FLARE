% Predicate to calculate the number of lollipops shared with friends
shared_lollipops(TotalLollipops, LollipopsShared) :-
LollipopsShared is TotalLollipops - 5.
% Predicate to calculate the number of lollipops each friend received
lollipops_per_friend(LollipopsShared, NumFriends, LollipopsPerFriend) :-
LollipopsPerFriend is LollipopsShared // NumFriends.
% Main predicate to calculate the number of lollipops each friend received
ray_friends_lollipops(TotalLollipops, NumFriends, LollipopsPerFriend) :-
shared_lollipops(TotalLollipops, LollipopsShared),
lollipops_per_friend(LollipopsShared, NumFriends, LollipopsPerFriend).
% Query to find out how many lollipops each of Ray's friends received
query(LollipopsPerFriend) :-
ray_friends_lollipops(25, 4, LollipopsPerFriend).
% Uncomment the following line to run the query
% ?- query(LollipopsPerFriend).
%query(LollipopsPerFriend).