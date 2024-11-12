% Define the rule for calculating total commission earned
commission_earned(NewYorkTimesCopies, WallStreetJournalCopies, NewYorkTimesCost, WallStreetJournalCost, TotalCommission) :-
CommissionNewYorkTimes is 0.10 * NewYorkTimesCopies * NewYorkTimesCost,
CommissionWallStreetJournal is 0.08 * WallStreetJournalCopies * WallStreetJournalCost,
TotalCommission is CommissionNewYorkTimes + CommissionWallStreetJournal.
% Calculate the total commission earned by Cayley
commission_earned(6, 10, 5, 15, TotalCommission).
% Predicate to encapsulate the entire calculation and output the total commission earned
calculate_total_commission(TotalCommission) :-
commission_earned(6, 10, 5, 15, TotalCommission).
% Query to find the total commission earned by Cayley
query(TotalCommission) :-
calculate_total_commission(TotalCommission).
% Uncomment the following line to run the query
% ?- query(TotalCommission).
%query(TotalCommission).