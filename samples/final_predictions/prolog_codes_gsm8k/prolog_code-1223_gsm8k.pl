% Define a predicate to calculate the total earnings based on tasks completed
total_earnings(TotalEarnings) :-
% Calculate earnings for each task completed
DishwasherEarnings is 6 * 0.50,  % Earnings for emptying the dishwasher
LaundryEarnings is 1 * 3.00,     % Earnings for doing laundry
TrashEarnings is 2 * 0.75,       % Earnings for taking out the trash
RoomEarnings is 1 * 1.50,        % Earnings for cleaning the room
% Calculate the total earnings by summing up earnings from all tasks
TotalEarnings is DishwasherEarnings + LaundryEarnings + TrashEarnings + RoomEarnings.
% Define a query predicate to find out the total earnings Jason made
query(TotalEarnings) :-
total_earnings(TotalEarnings).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalEarnings).
%query(TotalEarnings).