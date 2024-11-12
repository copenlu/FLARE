% Define the capacity of a tray
tray_capacity(24).
% Calculate the number of eggs that won't fit on the trays
calculate_eggs(TotalEggs, NumTrays, EggsNotOnTrays) :-
tray_capacity(Capacity),
TotalCapacity is Capacity * NumTrays,
EggsOnTrays is min(TotalEggs, TotalCapacity),
EggsNotOnTrays is TotalEggs - EggsOnTrays.
% Query to calculate the number of eggs that won't fit on the trays
query(EggsNotOnTrays) :-
calculate_eggs(64, 2, EggsNotOnTrays).
% Uncomment the following line to run the query and calculate the number of eggs that won't fit on the trays
% ?- query(EggsNotOnTrays).
%query(EggsNotOnTrays).