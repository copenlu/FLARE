% Predicate to calculate the number of eggs found by friends
% Params: TotalEggs, EggsFoundByFriends
eggs_found_by_friends(TotalEggs, EggsFoundByFriends) :-
EggsFoundBySmithTwins is 30 + 30,  % Assumed atom/predicate: Eggs found by Smith twins
EggsUnaccountedFor is TotalEggs - EggsFoundBySmithTwins,
EggsFoundByFriends is EggsUnaccountedFor - 10.
% Main predicate to compute the number of eggs found by friends
% Params: EggsFoundByFriends
calculate_eggs_found_by_friends(EggsFoundByFriends) :-
TotalEggs = 100,  % Assumed atom/predicate: Total number of eggs
eggs_found_by_friends(TotalEggs, EggsFoundByFriends).
% Query predicate to get the number of eggs found by friends
query(EggsFoundByFriends) :-
calculate_eggs_found_by_friends(EggsFoundByFriends).
% Uncomment the following line to run the query
% query(EggsFoundByFriends).
%query(EggsFoundByFriends).