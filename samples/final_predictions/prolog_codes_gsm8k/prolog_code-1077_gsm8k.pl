% Define the rule to calculate the total gallons of water consumed in 30 days
calculate_gallons_consumed(DailyCups, GallonsConsumed) :-
CupsToGallons is DailyCups / 16,          % Convert daily cups to gallons
GallonsConsumed is CupsToGallons * 30.    % Calculate total gallons consumed in 30 days
% Query to find the total gallons of water consumed in 30 days by Ingrid
query_gallons_consumed(GallonsConsumed) :-
calculate_gallons_consumed(8, GallonsConsumed).  % Ingrid drinks 8 cups of water daily
% Define a predicate that returns the correct numerical answer when queried
query(GallonsConsumed) :-
query_gallons_consumed(GallonsConsumed).
% Uncomment the following line to run the query
% ?- query(GallonsConsumed).
%query(GallonsConsumed).