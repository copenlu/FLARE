% Define the weekly rose production by Ford
rose_production(40).
% Define the weekly rose orders from the three flower shops
rose_orders(20, 15, 30).
% Calculate the total weekly demand from all flower shops
total_weekly_demand(Total) :-
rose_orders(X, Y, Z),
Total is X + Y + Z.
% Calculate the roses lacking to supply all flower shops every month
roses_lacking(Lacking) :-
rose_production(Production),
total_weekly_demand(WeeklyDemand),
Lacking is WeeklyDemand * 4 - Production.
% Query predicate to run the program and get the result
query(Lacking) :-
roses_lacking(Lacking).
% Uncomment the following line to run the query
% ?- query(Lacking).
%query(Lacking).