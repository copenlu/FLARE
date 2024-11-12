% Define the tip_amount predicate to calculate the tip based on the bill amount
tip_amount(Bill, Tip) :-
Tip is 0.2 * Bill.  % 20% tip on the bill
% Define the total_amount predicate to calculate the total amount paid (bill + tip)
total_amount(Bill, Total) :-
tip_amount(Bill, Tip),  % Calculate the tip amount
Total is Bill + Tip.  % Total amount paid is bill amount + tip amount
% Define the split_check predicate to split the total amount evenly between two people
split_check(Total, Amount) :-
Amount is Total / 2.  % Split the total amount equally between two people
% Query predicate to run the program and get the result
query(Amount) :-
total_amount(50, Total),  % Calculate total amount paid for a $50 bill
split_check(Total, Amount).  % Split the total amount evenly between two people
% Uncomment the following line to run the query
% ?- query(Amount).
%query(Amount).