% Define the rule to calculate the total number of utensils brought by Judy and her friend
total_utensils(JudyCups, JudyDishes, JudyTotal, FriendCups, FriendDishes, FriendTotal, TotalUtensils) :-
JudyTotal is JudyCups + JudyDishes,       % Calculate total utensils brought by Judy
FriendTotal is FriendCups + FriendDishes, % Calculate total utensils brought by Judy's friend
TotalUtensils is JudyTotal + FriendTotal. % Calculate total utensils brought by both
% Query to find the total number of utensils brought by Judy and her friend
query_total_utensils(TotalUtensils) :-
total_utensils(12, 24, JudyTotal, 40, 32, FriendTotal, TotalUtensils). % Assumed values for Judy and her friend
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_utensils(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).