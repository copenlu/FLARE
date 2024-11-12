% Define the rule to calculate the total number of friends Lily and Amy have together
calculate_friends(AmyFriends, LilyFriends, TotalFriends) :-
AmyFriends is LilyFriends + 20,
TotalFriends is AmyFriends + LilyFriends.
% Given that Lily has 50 friends, find the total number of friends Lily and Amy have together
query(TotalFriends) :-
calculate_friends(AmyFriends, 50, TotalFriends).
% Uncomment the following line to run the query and find out the total number of friends Lily and Amy have together.
% ?- query(TotalFriends).
%query(TotalFriends).