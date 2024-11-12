% Define the initial price of carrots
initial_price(120).
% Calculate the new price after a 5% increase
calculate_new_price(OldPrice, NewPrice) :-
NewPrice is OldPrice + (OldPrice * 0.05).
% Calculate the price after a specified number of years
calculate_price_after_years(OldPrice, 0, FinalPrice) :-
FinalPrice is round(OldPrice).
calculate_price_after_years(OldPrice, Years, FinalPrice) :-
Years > 0,
calculate_new_price(OldPrice, NewPrice),
NextYear is Years - 1,
calculate_price_after_years(NewPrice, NextYear, FinalPrice).
% Query to calculate the price after three years
query(PriceAfterThreeYears) :-
initial_price(InitialPrice),
calculate_price_after_years(InitialPrice, 3, PriceAfterThreeYears).
% Uncomment the line below to run the query
% query(PriceAfterThreeYears).
%query(PriceAfterThreeYears).