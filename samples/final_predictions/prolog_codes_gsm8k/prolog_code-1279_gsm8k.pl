% Define the rule to calculate the number of telephone calls needed to sell 15 cars
calculate_calls_to_sell_cars(Calls) :-
CarsToSell = 15,                    % Assumed atom: Number of cars Jason needs to sell
CustomersToSell is CarsToSell * 2,   % Calculate the total number of customers needed to sell the cars
CustomersToVisit is CustomersToSell * 2,  % Calculate the total number of customers needed to come into the dealership
Calls is CustomersToVisit * 25.      % Calculate the total number of telephone calls needed
% Query to find the number of telephone calls needed to sell 15 cars
query(Calls) :-
calculate_calls_to_sell_cars(Calls).
% Uncomment the following line to run the query
% ?- query(Calls).
%query(Calls).