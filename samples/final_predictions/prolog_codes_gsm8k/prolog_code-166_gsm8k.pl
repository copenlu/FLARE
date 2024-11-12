% Define the rule to calculate the new price after a certain number of months
calculate_price_after_months(InitialPrice, Months, FinalPrice) :-
Months > 0,
NewMonths is Months - 2,
price_increase(InitialPrice, NewPrice),
calculate_price_after_months(NewPrice, NewMonths, FinalPrice).
calculate_price_after_months(Price, 0, Price).
% Define the rule to calculate the new price after a 20% increase
price_increase(InitialPrice, NewPrice) :-
NewPrice is InitialPrice + (InitialPrice * 0.20).
% Calculate the final price after 36 months
query(FinalPrice) :-
calculate_price_after_months(20, 36, FinalPrice).
% Uncomment the following line to run the query and find out the final price after 36 months.
% ?- query(FinalPrice).
%query(FinalPrice).