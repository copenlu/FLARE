% Define the rule to calculate the price of the car in a specific year
car_price_in_year(2007, 20000). % Initial price of the car in 2007
car_price_in_year(Year, Price) :-
Year > 2007,
PrevYear is Year - 1,
car_price_in_year(PrevYear, PrevPrice),
Depreciation is 0.21 * PrevPrice,  % Depreciation rate of 21%
Price is PrevPrice - Depreciation.
% Query to find the price of the car in 2010
query_car_price_in_2010(Price) :-
car_price_in_year(2010, Price).
% Define a predicate that returns the correct numerical answer when queried
query(Price) :-
query_car_price_in_2010(Price).
% Uncomment the following line to run the query
% ?- query(Price).
%query(Price).