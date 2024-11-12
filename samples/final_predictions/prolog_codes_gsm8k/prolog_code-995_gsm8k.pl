% Define the rule to calculate the perimeter of a rectangle
calculate_perimeter(Length, Width, Perimeter) :-
Perimeter is 2 * (Length + Width).
% Define the rule to calculate the number of wooden slats needed
calculate_slats_needed(Perimeter, SlatsNeeded) :-
SlatsNeeded is Perimeter * 2.
% Calculate the perimeter and number of slats needed for Robert's fence
calculate_slats_for_fence(SlatsNeeded) :-
calculate_perimeter(15, 10, Perimeter),  % Garden dimensions: 15 feet long, 10 feet wide
calculate_slats_needed(Perimeter, SlatsNeeded).
% Query to find the number of wooden slats needed for Robert's fence
query(SlatsNeeded) :-
calculate_slats_for_fence(SlatsNeeded).
% Uncomment the following line to run the query
% ?- query(SlatsNeeded).
%query(SlatsNeeded).