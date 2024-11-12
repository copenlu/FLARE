% Define a predicate to calculate the number of diaper changes Jordan performs per day
diaper_changes(Children, DiaperChangesPerChild, FractionChangedByWife, DiaperChangesByJordan) :-
% Calculate the total diaper changes needed per day for both children
TotalDiaperChangesNeeded is Children * DiaperChangesPerChild,
% Calculate the diaper changes done by Jordan's wife
DiaperChangesByWife is TotalDiaperChangesNeeded * FractionChangedByWife,
% Calculate the diaper changes done by Jordan
DiaperChangesByJordan is TotalDiaperChangesNeeded - DiaperChangesByWife.
% Define a query predicate to find out the number of diaper changes Jordan performs per day
query(DiaperChangesByJordan) :-
% Jordan has 2 children, each requiring 5 diaper changes per day, wife changes half
diaper_changes(2, 5, 0.5, DiaperChangesByJordan).
% Uncomment the line below to run the query in SWI-Prolog
% query(DiaperChangesByJordan).
%query(DiaperChangesByJordan).