% Define the number of apples eaten per day
apples_per_day(4).
% Calculate the total number of apples eaten in a given number of days
total_apples_eaten(Days, TotalApples) :-
apples_per_day(PerDay),
TotalApples is PerDay * Days.
% Calculate the total number of apples eaten by both Marin and Nancy in 30 days
total_apples_eaten_by_both(TotalApples) :-
total_apples_eaten(30, TotalMarin),
total_apples_eaten(30, TotalNancy),
TotalApples is TotalMarin + TotalNancy.
% Query to calculate the total number of apples eaten by both Marin and Nancy in 30 days
query(TotalApples) :-
total_apples_eaten_by_both(TotalApples).
% Uncomment the following line to run the query and calculate the total number of apples eaten by both in 30 days
% ?- query(TotalApples).
%query(TotalApples).