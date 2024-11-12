% Define the earnings from selling a certain percentage of land at a given price
earnings_from_sale(Percentage, Price, TotalEarnings) :-
TotalEarnings is (80 * Percentage / 100) * Price.
% Define the total earnings Abraham will make
total_earnings(TotalEarnings) :-
earnings_from_sale(50, 1, Earnings1),  % Selling half for $50
RemainingLand is 80 - (80 * 50 / 100),  % Calculate remaining land after first sale
earnings_from_sale(25, 0.75, Earnings2),  % Selling 1/4 of remaining land for $30
RemainingLand2 is RemainingLand - (RemainingLand * 25 / 100),  % Calculate remaining land after second sale
earnings_from_sale(100, 3, Earnings3),  % Selling remaining land for $3 per square meter
TotalEarnings is Earnings1 + Earnings2 + Earnings3.
% Query to find the total earnings
query(TotalEarnings) :-
total_earnings(TotalEarnings).
% Uncomment the following line to run the query
% ?- query(TotalEarnings).
%query(TotalEarnings).