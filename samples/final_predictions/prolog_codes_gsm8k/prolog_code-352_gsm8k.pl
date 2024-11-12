% Define the predicate to calculate the additional distance Tyson runs each day
additional_distance(DailyDistance, AdditionalDistance) :-
AdditionalDistance is DailyDistance * 1/5.  % Tyson runs 1/5 more meters each day
% Define the predicate to calculate the total distance Tyson covers each day
total_distance(DailyDistance, TotalDistance) :-
additional_distance(DailyDistance, AdditionalDistance),
TotalDistance is DailyDistance + AdditionalDistance.
% Define the predicate to calculate the total distance Tyson covers in June
total_distance_june(DailyDistance, DaysInMonth, TotalDistanceJune) :-
total_distance(DailyDistance, TotalDailyDistance),
TotalDistanceJune is TotalDailyDistance * DaysInMonth.
% Query predicate to run the program and get the result
query(TotalDistanceJune) :-
DailyDistance = 5000,  % Assumed atom/predicate: Tyson runs 5000 meters every day
DaysInMonth = 30,  % Assumed atom/predicate: June has 30 days
total_distance_june(DailyDistance, DaysInMonth, TotalDistanceJune).
% Uncomment the following line to run the query
% ?- query(TotalDistanceJune).
%query(TotalDistanceJune).