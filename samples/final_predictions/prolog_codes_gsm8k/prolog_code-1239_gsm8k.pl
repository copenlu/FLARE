% Define a predicate to calculate the amount of water removed on each setting based on the number of days
water_removed(low, Days, Amount) :-
Amount is 1 * Days.
water_removed(medium, Days, Amount) :-
Amount is 2 * 1 * Days.
water_removed(high, Days, Amount) :-
Amount is 2 * 2 * 1 * Days.
% Define a predicate to calculate the total water removed by running the dehumidifier on each setting for the specified number of days
total_water_removed(Total) :-
water_removed(low, 3, LowAmount),
water_removed(medium, 3, MediumAmount),
water_removed(high, 5, HighAmount),
Total is LowAmount + MediumAmount + HighAmount.
% Define a query predicate to find out the total amount of water removed
query(Total) :-
total_water_removed(Total).
% Uncomment the line below to run the query in SWI-Prolog
% query(Total).
%query(Total).