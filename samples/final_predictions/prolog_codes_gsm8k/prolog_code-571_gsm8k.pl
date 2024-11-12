% Define the number of buttons with two holes (assumed known)
buttons_with_two_holes(7).
% Define the number of buttons with four holes (calculated from total buttons and buttons with two holes)
buttons_with_four_holes(RemainingButtons) :-
TotalButtons = 21,  % Total buttons in the bag
buttons_with_two_holes(TwoHoleButtons),
RemainingButtons is TotalButtons - TwoHoleButtons.
% Define the total number of holes in all the buttons
total_holes(Total) :-
buttons_with_two_holes(TwoHoleButtons),
buttons_with_four_holes(FourHoleButtons),
Total is (TwoHoleButtons * 2) + (FourHoleButtons * 4).
% Query predicate to find the total number of holes
query(Total) :-
total_holes(Total).
% Uncomment the line below to run the query
% ?- query(Total).
%query(Total).