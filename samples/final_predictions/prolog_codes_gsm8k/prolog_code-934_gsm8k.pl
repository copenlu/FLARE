% Define the rule to calculate Colby's earnings in an eight-hour workday
calculate_earnings(TotalEarnings) :-
PackagesPerHour is 50 - 10,          % Calculate the number of packages Colby completes per hour
TotalPackages is PackagesPerHour * 8,  % Calculate the total number of packages completed in an eight-hour workday
TotalEarnings is TotalPackages * 0.20. % Calculate the total earnings based on the payment rate of $0.20 per package
% Query to find out how much money Colby earns in a typical eight-hour workday
query_earnings(TotalEarnings) :-
calculate_earnings(TotalEarnings).
% Define a predicate that returns the correct numerical answer when queried
query(Earnings) :-
query_earnings(Earnings).
% Uncomment the following line to run the query
% ?- query(Earnings).
%query(Earnings).