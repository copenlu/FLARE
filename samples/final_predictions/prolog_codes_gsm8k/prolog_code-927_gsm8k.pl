% Define the rule to calculate the average price per ticket
average_price_per_ticket(TotalAmount, TotalMovies, AveragePrice) :-
TotalTickets is TotalMovies * 3,            % Calculate the total number of tickets purchased
AveragePrice is TotalAmount / TotalTickets. % Calculate the average price per ticket
% Query to find the average price per ticket
query_average_price_per_ticket(AveragePrice) :-
TotalAmount = 216,  % Assumed total amount spent by Deepa
TotalMovies = 9,    % Assumed total number of Fast and the Furious movies
average_price_per_ticket(TotalAmount, TotalMovies, AveragePrice).
% Define a predicate that returns the correct numerical answer when queried
query(AveragePrice) :-
query_average_price_per_ticket(AveragePrice).
% Uncomment the following line to run the query
% ?- query(AveragePrice).
%query(AveragePrice).