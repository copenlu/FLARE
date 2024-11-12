% Define rules for each activity
gum_chewed_at_school(ChewedAtSchool) :-
ChewedAtSchool is 8 / 2.  % Jim chews 1 piece of gum for every 2 hours at school
gum_chewed_on_way_home(ChewedOnWayHome, 1).  % Jim chews 1 piece on the way home
gum_chewed_after_dinner(ChewedAfterDinner, 1).  % Jim chews 1 piece after dinner
gum_given_to_sister(GivenToSister, Remaining) :-
GivenToSister is Remaining / 2.  % Jim gives half of the remaining gum to his sister
% Define rule to calculate gum left at the end of the day
gum_left_at_end_of_day(LeftAtEnd) :-
gum_chewed_at_school(ChewedAtSchool),
gum_chewed_on_way_home(ChewedOnWayHome),
gum_chewed_after_dinner(ChewedAfterDinner),
gum_given_to_sister(GivenToSister, Remaining),
InitialPack = 20,  % Jim starts with a 20-pack of gum
TotalChewed is ChewedAtSchool + ChewedOnWayHome + ChewedAfterDinner + GivenToSister,
LeftAtEnd is InitialPack - TotalChewed.
% Query to find the number of gum pieces Jim has left at the end of the day
query(LeftAtEnd) :-
gum_left_at_end_of_day(LeftAtEnd).
% Uncomment the following line to run the query
% ?- query(LeftAtEnd).
%query(LeftAtEnd).