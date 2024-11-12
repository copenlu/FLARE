% Predicate to calculate the total number of cats taken away by the boats
cats_taken_away(TotalCatsTaken) :-
TotalCatsTaken is 4 * 5.
% Predicate to calculate the number of remaining cats after boats took some away
remaining_cats(InitialCats, TotalCatsTaken, RemainingCats) :-
RemainingCats is InitialCats - TotalCatsTaken.
% Predicate to calculate the number of cats running after the mouse
cats_after_mouse(RemainingCats, CatsAfterMouse) :-
CatsAfterMouse is (3 * RemainingCats) // 5.
% Predicate to calculate the final number of cats left on the rock
cats_left_on_rock(InitialCats, TotalCatsTaken, CatsAfterMouse, CatsLeft) :-
remaining_cats(InitialCats, TotalCatsTaken, RemainingCats),
cats_after_mouse(RemainingCats, CatsAfterMouse),
CatsLeft is RemainingCats - CatsAfterMouse.
% Query to find out how many cats were left on the rock
query(CatsLeft) :-
cats_left_on_rock(50, TotalCatsTaken, CatsAfterMouse, CatsLeft).
% Uncomment the following line to run the query
% ?- query(CatsLeft).
%query(CatsLeft).