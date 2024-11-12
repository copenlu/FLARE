% Define the number of clouds seen on a given day
count_clouds(monday, 3).
count_clouds(Day, Clouds) :-
Day \= monday,
PrevDay is Day - 1,
count_clouds(PrevDay, PrevClouds),
Clouds is PrevClouds * 2.
% Define the total number of clouds counted across all five days
total_clouds_counted(Total) :-
count_clouds(monday, MondayClouds),
count_clouds(friday, FridayClouds),
Total is MondayClouds + FridayClouds.
% Query to find the total number of clouds counted across all five days
query(Total) :-
total_clouds_counted(Total).
% Uncomment the following line to run the query
% ?- query(Total).
%query(Total).