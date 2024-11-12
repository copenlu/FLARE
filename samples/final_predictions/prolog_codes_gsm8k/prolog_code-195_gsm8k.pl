% Define a predicate to calculate the total number of peaches collected
total_peaches_collected(Hours, Rate, TotalPeaches) :-
% Convert hours to minutes
Minutes is Hours * 60,
% Calculate total peaches collected
TotalPeaches is Minutes * Rate.
% Define a query predicate to find out the total number of peaches John collected
query(TotalPeaches) :-
% John collects peaches for 3 hours at a rate of 2 peaches per minute
total_peaches_collected(3, 2, TotalPeaches).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalPeaches).
%query(TotalPeaches).