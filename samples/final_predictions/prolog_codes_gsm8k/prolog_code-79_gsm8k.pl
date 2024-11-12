% Define the rule to calculate the difference in laundry done by Raymond and David
calculate_laundry_difference(RaymondLaundry, DavidLaundry, Difference) :-
SarahLaundry is 400,                    % Assumed atom/predicate: Sarah does 400 pounds of laundry
DavidLaundry is SarahLaundry / 4,       % Calculate the amount of laundry done by David
RaymondLaundry is SarahLaundry / 2,     % Calculate the amount of laundry done by Raymond
Difference is RaymondLaundry - DavidLaundry.  % Calculate the difference in laundry done by Raymond and David
% Query to find the difference in laundry done by Raymond and David
query_laundry_difference(Difference) :-
calculate_laundry_difference(RaymondLaundry, DavidLaundry, Difference).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_laundry_difference(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).