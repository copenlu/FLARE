% Predicate to calculate the total number of face masks Tyrion uses per day
% Params: ChangesPerOuting, OutingsPerDay, MasksPerDay
face_masks_per_day(ChangesPerOuting, OutingsPerDay, MasksPerDay) :-
MasksPerDay is ChangesPerOuting * OutingsPerDay.
% Predicate to calculate the total number of face masks Tyrion uses in 2 days
% Params: MasksPerDay, MasksPer2Days
total_masks_per_2_days(MasksPerDay, MasksPer2Days) :-
MasksPer2Days is MasksPerDay * 2.
% Main predicate to compute the total number of face masks Tyrion uses every 2 days
% Params: MasksPer2Days
calculate_masks_per_2_days(MasksPer2Days) :-
% Constants
ChangesPerOuting = 2,
OutingsPerDay = 3,
% Calculate masks used per day
face_masks_per_day(ChangesPerOuting, OutingsPerDay, MasksPerDay),
% Calculate total masks used in 2 days
total_masks_per_2_days(MasksPerDay, MasksPer2Days).
% Query predicate to get the total number of face masks used every 2 days
query(MasksPer2Days) :-
calculate_masks_per_2_days(MasksPer2Days).
% Uncomment the following line to run the query
% query(MasksPer2Days).
%query(MasksPer2Days).