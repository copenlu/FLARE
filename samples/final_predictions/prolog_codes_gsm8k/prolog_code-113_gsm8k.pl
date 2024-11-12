% Define rule to calculate the area of a rectangle
area(Rectangle, Width, Length, Area) :-
Area is Width * Length.
% Calculate the total number of fruit roll-ups for Marcell and Beatrice
total_roll_ups_marcell(TotalMarcell) :-
area(marcell_roll_up, 3, 14, TotalMarcell).
total_roll_ups_beatrice(TotalBeatrice) :-
area(beatrice_roll_up, 2, 24, TotalBeatrice).
% Calculate the average number of fruit roll-ups eaten by each person
average_roll_ups(TotalMarcell, TotalBeatrice, Average) :-
Total is TotalMarcell + TotalBeatrice,
Average is Total / 2.
% Query to calculate the average number of fruit roll-ups eaten by each person
query(Average) :-
total_roll_ups_marcell(TotalMarcell),
total_roll_ups_beatrice(TotalBeatrice),
average_roll_ups(TotalMarcell, TotalBeatrice, Average).
% Uncomment the following line to run the query and calculate the average number of fruit roll-ups eaten by each person
% ?- query(Average).
%query(Average).