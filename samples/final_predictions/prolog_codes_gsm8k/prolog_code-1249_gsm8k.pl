% Define a predicate to calculate the total payment Ali needs to make to John
total_payment(Tables, TableCost, Frames, FrameCost, TotalPayment) :-
% Calculate the total cost of tables
TotalTableCost is Tables * TableCost,
% Calculate the total cost of roof frames
TotalFrameCost is Frames * FrameCost,
% Calculate the total payment by summing up the costs of tables and frames
TotalPayment is TotalTableCost + TotalFrameCost.
% Define a query predicate to find out the total payment Ali needs to make to John
query(TotalPayment) :-
% John manufactured 4 tables for $20 each and 2 frames for $10 each
total_payment(4, 20, 2, 10, TotalPayment).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalPayment).
%query(TotalPayment).