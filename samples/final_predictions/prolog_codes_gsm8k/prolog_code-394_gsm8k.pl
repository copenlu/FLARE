% Define the rule to calculate the total land Mr. Ruther had at first
total_land_at_first(TotalLand) :-
SoldLand is (3/5) * TotalLand,    % Calculate the amount of land sold
RemainingLand is TotalLand - SoldLand,  % Calculate the remaining land
RemainingLand = 12.8.  % Set the remaining land to be 12.8 hectares
% Query to find the total land Mr. Ruther had at first
query_total_land_at_first(TotalLand) :-
total_land_at_first(TotalLand).
% Define a predicate that returns the correct numerical answer when queried
query(TotalLand) :-
query_total_land_at_first(TotalLand).
% Uncomment the following line to run the query
% ?- query(TotalLand).
%query(TotalLand).