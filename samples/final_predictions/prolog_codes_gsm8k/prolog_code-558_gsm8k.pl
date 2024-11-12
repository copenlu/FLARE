% Define the amount received by Brad (assumed known)
amount_received_by_brad(20).  % Assumed amount Brad receives in dollars
% Define the predicate to calculate the amount received by Jeff based on the ratio
amount_received_by_jeff(BradAmount, JeffAmount) :-
JeffAmount is 4 * BradAmount.
% Define the total amount equation where the sum of Brad's and Jeff's amounts is 100 dollars
total_amount_equation(BradAmount, JeffAmount, TotalAmount) :-
TotalAmount is BradAmount + JeffAmount,
TotalAmount = 100.
% Query predicate to find the amount Jeff receives
query(JeffAmount) :-
amount_received_by_brad(BradAmount),
amount_received_by_jeff(BradAmount, JeffAmount),
total_amount_equation(BradAmount, JeffAmount, 100).
% Uncomment the line below to run the query
% query(JeffAmount).
%query(JeffAmount).