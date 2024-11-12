% Define the earnings of Keegan and Tashay
earnings(keegan, 83).
earnings(tashay, 91).
% Calculate the total amount earned
total_earned(Total) :-
earnings(keegan, KeeganEarned),
earnings(tashay, TashayEarned),
Total is KeeganEarned + TashayEarned.
% Calculate the remaining amount needed to reach the goal
remaining_amount_needed(Remaining) :-
total_earned(TotalEarned),
Goal = 200,
Remaining is Goal - TotalEarned.
% Query to calculate the remaining amount needed to reach the goal
query(Remaining) :-
remaining_amount_needed(Remaining).
% Uncomment the following line to run the query and calculate the remaining amount needed
% ?- query(Remaining).
%query(Remaining).