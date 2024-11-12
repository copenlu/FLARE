% Define how many eggs Claire consumes in a day
eggs_per_day(OmeletEggs, OmeletsPerDay, EggsPerDay) :-
EggsPerDay is OmeletEggs * OmeletsPerDay.
% Define total eggs consumed in 4 weeks
eggs_in_4_weeks(EggsPerDay, DaysIn4Weeks, TotalEggs) :-
TotalEggs is EggsPerDay * DaysIn4Weeks.
% Define conversion to dozens
dozens_of_eggs(TotalEggs, Dozens) :-
Dozens is TotalEggs / 12.
% Calculate dozens of eggs Claire will eat in 4 weeks
calculate_eggs_in_4_weeks(Dozens) :-
eggs_per_day(3, 1, EggsPerDay),  % Claire makes a 3-egg omelet once a day
eggs_in_4_weeks(EggsPerDay, 28, TotalEggs),  % 4 weeks have 28 days
dozens_of_eggs(TotalEggs, Dozens).
% Query to find the number of dozens of eggs Claire will eat in 4 weeks
query(Dozens) :-
calculate_eggs_in_4_weeks(Dozens).
% Uncomment the following line to run the query
% ?- query(Dozens).
%query(Dozens).