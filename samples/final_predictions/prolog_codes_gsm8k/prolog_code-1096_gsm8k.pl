% Define the rule to calculate the total amount of fertilizer that reached the farmers
calculate_total_fertilizer_reached(TotalFertilizerReached) :-
TotalTrucks = 20,              % Total number of trucks dispatched
FertilizerPerTruck = 20,       % Amount of fertilizer each truck is carrying in tons
TotalFertilizerDispatched is TotalTrucks * FertilizerPerTruck,  % Calculate total dispatched fertilizer
FailedTrucks is TotalTrucks // 4,  % Calculate the number of trucks that had mechanical failures
FailedFertilizer is FailedTrucks * FertilizerPerTruck,  % Calculate the amount of failed fertilizer
TotalFertilizerReached is TotalFertilizerDispatched - FailedFertilizer.  % Calculate total fertilizer that reached the farmers
% Query to find the total amount of fertilizer that reached the farmers
query_total_fertilizer_reached(TotalFertilizerReached) :-
calculate_total_fertilizer_reached(TotalFertilizerReached).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_fertilizer_reached(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).