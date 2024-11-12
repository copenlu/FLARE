% Predicate to calculate the average amount lost by Johnny's dad
% Params: AverageLoss
average_loss(AverageLoss) :-
% Given amounts
Loss1 = 5,  % Amount lost in the first race
% Calculate the amount won in the second race
Win2 is 2 * Loss1 + 1,
% Calculate the amount lost in the third race
Loss3 is 1.5 * Win2,
% Calculate the total amount lost in all three races
TotalLoss is Loss1 + Loss3 + Win2,
% Calculate the average amount lost
AverageLoss is TotalLoss / 3.
% Query predicate to get the average amount lost
query(AverageLoss) :-
average_loss(AverageLoss).
% Uncomment the following line to run the query
% query(AverageLoss).
%query(AverageLoss).