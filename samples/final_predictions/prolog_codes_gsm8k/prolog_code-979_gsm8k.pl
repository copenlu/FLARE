% Define the rule to calculate the number of occupied beds after a certain number of days
occupied_beds(CurrentOccupancy, DailyAdmissions, Days, OccupiedAfterDays) :-
OccupiedAfterDays is CurrentOccupancy + (DailyAdmissions * Days).
% Define the rule to calculate the number of unoccupied beds
unoccupied_beds(TotalCapacity, OccupiedAfterDays, UnoccupiedBeds) :-
UnoccupiedBeds is TotalCapacity - OccupiedAfterDays.
% Calculate the total number of unoccupied beds after 2 weeks
% Assuming 14 days in 2 weeks
calculate_unoccupied_beds(UnoccupiedBeds) :-
TotalCapacity = 1000,  % Assumed total capacity of the hospital
CurrentOccupancy = 1000 / 5,  % Assumed current occupancy rate
DailyAdmissions = 50,  % Assumed number of patients admitted daily
Days = 14,  % Assumed number of days in 2 weeks
occupied_beds(CurrentOccupancy, DailyAdmissions, Days, OccupiedAfterDays),
unoccupied_beds(TotalCapacity, OccupiedAfterDays, UnoccupiedBeds).
% Query to find the total number of unoccupied beds after 2 weeks
query(UnoccupiedBeds) :-
calculate_unoccupied_beds(UnoccupiedBeds).
% Uncomment the following line to run the query
% ?- query(UnoccupiedBeds).
%query(UnoccupiedBeds).