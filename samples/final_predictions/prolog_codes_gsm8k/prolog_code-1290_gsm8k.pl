% Define the rule to calculate the daily revenue
daily_revenue(DailyRevenue) :-
DozenDoughnuts = 10,        % Assumed atom: Number of dozens of doughnuts made daily
DoughnutsPerDozen = 12,     % Assumed atom: Number of doughnuts in a dozen
PricePerDoughnut = 2,       % Assumed atom: Selling price per doughnut
DailyRevenue is DozenDoughnuts * DoughnutsPerDozen * PricePerDoughnut.
% Define the rule to calculate the total revenue in June
june_revenue(TotalRevenue) :-
DaysInJune = 30,            % Assumed atom: Number of days in June
daily_revenue(DailyRevenue),
TotalRevenue is DailyRevenue * DaysInJune.
% Query to find the total revenue in June
query(TotalRevenue) :-
june_revenue(TotalRevenue).
% Uncomment the following line to run the query
% ?- query(TotalRevenue).
%query(TotalRevenue).