% Define the total cost per friend including mini-golf, arcade tokens, and go-kart rides
total_cost_per_friend(Cost) :-
Cost is 5 + 5 + (2 * 10).
% Define the predicate to calculate the maximum number of friends Morgan can invite within her budget
max_friends(Budget, MaxFriends) :-
total_cost_per_friend(CostPerFriend),
MaxFriends is Budget // CostPerFriend.
% Query predicate to run the program and get the result
query(MaxFriends) :-
max_friends(90, MaxFriends).
% Uncomment the following line to run the query
% ?- query(MaxFriends).
%query(MaxFriends).