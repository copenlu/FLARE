% Define the principal amount Brenda invested
principal_amount(300).
% Define the interest rate as three-quarters of the original amount per year
interest_rate(0.75).  % Assumed interest rate of 3/4
% Calculate the simple interest accumulated over a specified number of years
simple_interest(Principal, Rate, Years, Interest) :-
Interest is Principal * Rate * Years.
% Calculate the total amount Brenda will have after 3 years
total_amount(Principal, Rate, Years, Total) :-
simple_interest(Principal, Rate, Years, Interest),
Total is Principal + Interest.
% Query predicate to find the total amount Brenda will have after 3 years
query(TotalAmount) :-
principal_amount(Principal),
interest_rate(Rate),
total_amount(Principal, Rate, 3, TotalAmount).
% Uncomment the line below to run the query
% query(TotalAmount).
%query(TotalAmount).