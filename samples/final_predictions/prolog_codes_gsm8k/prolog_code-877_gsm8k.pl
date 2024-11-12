% Define the total number of students in Mr. Jackson's fourth-grade class
total_students(27).
% Calculate the total number of glue sticks needed for all students
total_glue_sticks_needed(Students, TotalGlueSticks) :-
TotalGlueSticks is Students * 2.
% Calculate the number of packs of glue sticks needed
packs_needed(TotalGlueSticks, PacksNeeded) :-
PacksNeeded is TotalGlueSticks // 8 + 1. % Add 1 to account for rounding up
% Calculate the number of extra glue sticks left over
extra_glue_sticks(TotalGlueSticks, PacksNeeded, ExtraGlueSticks) :-
ExtraGlueSticks is (PacksNeeded * 8) - TotalGlueSticks.
% Query predicate to find the number of packs needed and extra glue sticks left over
query(PacksNeeded, ExtraGlueSticks) :-
total_students(Students),
total_glue_sticks_needed(Students, TotalGlueSticks),
packs_needed(TotalGlueSticks, PacksNeeded),
extra_glue_sticks(TotalGlueSticks, PacksNeeded, ExtraGlueSticks).
% Uncomment the line below to run the query
% query(PacksNeeded, ExtraGlueSticks).
%query(PacksNeeded, ExtraGlueSticks).