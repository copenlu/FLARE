% Define the initial number of shoes Frank has
initial_shoes(200).
% Define the number of shoes gained on each day
shoes_gained(monday, 5).
shoes_gained(wednesday, 15).
shoes_gained(friday, 30).
% Define the number of shoes lost on Saturday
shoes_lost(saturday, 180).
% Calculate the total number of shoes Frank will have on Sunday
total_shoes_on_sunday(TotalShoes) :-
initial_shoes(Initial),
shoes_gained(monday, MondayGained),
shoes_gained(wednesday, WednesdayGained),
shoes_gained(friday, FridayGained),
shoes_lost(saturday, SaturdayLost),
TotalShoes is Initial + MondayGained + WednesdayGained + FridayGained - SaturdayLost.
% Query to calculate the total number of shoes Frank will have on Sunday
query(TotalShoes) :-
total_shoes_on_sunday(TotalShoes).
% Uncomment the following line to run the query and calculate the total number of shoes on Sunday
% ?- query(TotalShoes).
%query(TotalShoes).