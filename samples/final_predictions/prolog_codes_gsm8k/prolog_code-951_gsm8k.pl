% Facts for the number of Junebugs removed on each day
junebugs_removed(monday, 39).
junebugs_removed(tuesday, 2 * 39).
junebugs_removed(wednesday, 2 * 39).
junebugs_removed(thursday, 48).
junebugs_removed(friday, 57).
% Define the rule to calculate the average number of Junebugs removed per day
average_junebugs_per_day(Average) :-
TotalJunebugs is 39 + 2 * 39 + 2 * 39 + 48 + 57,  % Calculate the total number of Junebugs removed during the week
Days = 5,  % Total number of days in the week
Average is TotalJunebugs / Days.  % Calculate the average number of Junebugs removed per day
% Query to find the average number of Junebugs removed per day
query(Average) :-
average_junebugs_per_day(Average).
% Uncomment the following line to run the query
% ?- query(Average).
%query(Average).