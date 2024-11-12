% Define the cost of the hat purchased by Thea
hat_cost(70).
% Calculate the total amount paid by multiplying the value of each bill by the number of bills
total_amount_paid(Bill, Total) :-
Total is Bill * 4.
% Calculate the change received by subtracting the cost of the hat from the total amount paid
change_received(TotalPaid, Cost, Change) :-
Change is TotalPaid - Cost.
% Calculate the change Thea received after purchasing the hat
thea_change(Cost, Change) :-
total_amount_paid(20, TotalPaid),  % Assumed each bill is $20
hat_cost(Cost),
change_received(TotalPaid, Cost, Change).
% Query predicate to find the amount of change Thea received
query(Change) :-
thea_change(70, Change).  % Assumed cost of the hat is $70
% Uncomment the line below to run the query
% query(Change).
%query(Change).