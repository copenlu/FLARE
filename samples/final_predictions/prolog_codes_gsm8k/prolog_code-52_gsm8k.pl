% Define the rule to calculate the total earnings from selling eggs per week
calculate_earnings_per_week(TotalEarnings) :-
EggsProducedPerDay = 252,               % Assumed atom/predicate: Total number of eggs produced per day
SellingPricePerDozen = 2,               % Assumed atom/predicate: Selling price per dozen
DozensProducedPerDay is EggsProducedPerDay / 12,  % Calculate dozens of eggs produced per day
DozensProducedPerWeek is DozensProducedPerDay * 7,  % Calculate dozens of eggs produced per week
TotalEarnings is DozensProducedPerWeek * SellingPricePerDozen.  % Calculate total earnings per week
% Query to find out how much Lloyd makes on eggs per week
query(TotalEarnings) :-
calculate_earnings_per_week(TotalEarnings).
% Uncomment the line below to run the query
% ?- query(TotalEarnings).
%query(TotalEarnings).