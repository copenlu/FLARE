% Define the number of friends Charlie has
charlie_friends(12).
% Define the relationship between Charlie, Dorothy, and James
dorothy_friends(DorothyFriends) :-
charlie_friends(CharlieFriends),
DorothyFriends is CharlieFriends / 3.
james_friends(JamesFriends) :-
dorothy_friends(DorothyFriends),
JamesFriends is DorothyFriends * 4.
% Query to find the number of friends James has
query(JamesFriends) :-
james_friends(JamesFriends).
% Uncomment the following line to run the query and find out the number of friends James has
% ?- query(JamesFriends).
%query(JamesFriends).