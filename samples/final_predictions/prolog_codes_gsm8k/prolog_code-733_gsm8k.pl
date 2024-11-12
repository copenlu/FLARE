% Define the initial planned price per computer
planned_price_per_computer(700).  % Assumed initial planned price per computer
% Define the number of computers to be purchased
number_of_computers(500).  % Assumed number of computers to be purchased
% Define the price increase percentage
price_increase_percentage(10).  % Assumed price increase percentage
% Calculate the new price per computer after the price increase
calculate_new_price(PlannedPrice, PriceIncreasePercentage, NewPrice) :-
NewPrice is PlannedPrice + (PlannedPrice * PriceIncreasePercentage / 100).
% Calculate the total amount paid for all the computers
total_amount_paid(PlannedPrice, NumberOfComputers, NewPrice, TotalAmountPaid) :-
TotalAmountPaid is NewPrice * NumberOfComputers.
% Query predicate to find the total amount paid by the company
query(TotalAmountPaid) :-
planned_price_per_computer(PlannedPrice),
number_of_computers(NumberOfComputers),
price_increase_percentage(PriceIncreasePercentage),
calculate_new_price(PlannedPrice, PriceIncreasePercentage, NewPrice),
total_amount_paid(PlannedPrice, NumberOfComputers, NewPrice, TotalAmountPaid).
% Uncomment the line below to run the query
% query(TotalAmountPaid).
%query(TotalAmountPaid).