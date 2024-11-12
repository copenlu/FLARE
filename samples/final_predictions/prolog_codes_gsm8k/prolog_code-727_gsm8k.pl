% Define the production rate predicate to calculate the production rate of a specific type of ice cream
production_rate(Quarts, Hours, Rate) :-
Rate is Quarts / Hours.
% Calculate the production rate for chocolate ice cream
production_rate(100, 2, ChocolateRate).  % Assumed values for quarts and hours
% Calculate the production rate for vanilla ice cream
production_rate(50, 4, VanillaRate).  % Assumed values for quarts and hours
% Calculate the total production of a specific type of ice cream in a given number of hours
total_production(Rate, Hours, Total) :-
Total is Rate * Hours.
% Calculate the total production of chocolate ice cream in 48 hours
total_production(ChocolateRate, 48, TotalChocolateProduction).
% Calculate the total production of vanilla ice cream in 48 hours
total_production(VanillaRate, 48, TotalVanillaProduction).
% Calculate the total production of both chocolate and vanilla ice cream in 48 hours
total_production_48_hours(TotalProduction) :-
total_production(ChocolateRate, 48, TotalChocolateProduction),
total_production(VanillaRate, 48, TotalVanillaProduction),
TotalProduction is TotalChocolateProduction + TotalVanillaProduction.
% Query predicate to find the total production of ice cream in 48 hours
query(TotalProduction) :-
total_production_48_hours(TotalProduction).
% Uncomment the line below to run the query
% query(TotalProduction).
%query(TotalProduction).