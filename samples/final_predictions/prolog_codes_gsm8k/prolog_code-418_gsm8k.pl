TotalWords is Pages * WordsPerPage,
ReadingTime is TotalWords / ReadingRate.
% Predicate to calculate the total travel time
total_travel_time(TravelTime) :- TravelTime is 10.
% Predicate to calculate how many minutes early Toby will be at the airport
minutes_early(Pages, WordsPerPage, ReadingRate, EarlyMinutes) :-
total_travel_time(TravelTime),
EarlyMinutes is 60 - (ReadingTime + TravelTime).
% Main predicate to calculate how many minutes early Toby will be
toby_early_minutes(Pages, WordsPerPage, ReadingRate, EarlyMinutes) :-
minutes_early(Pages, WordsPerPage, ReadingRate, EarlyMinutes).
% Query to find out how many minutes early Toby will be at the airport
query(EarlyMinutes) :-
toby_early_minutes(45, 200, 300, EarlyMinutes).
% Uncomment the following line to run the query
% ?- query(EarlyMinutes).
%query(EarlyMinutes).