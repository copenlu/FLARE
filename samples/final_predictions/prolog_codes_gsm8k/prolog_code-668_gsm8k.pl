% Define the rule to calculate the total cost of the carriage rental
calculate_cost(TotalCost) :-
FreeHour = 1,                   % Assumed atom: James gets 1 hour free
FirstHourCost = 15,             % Assumed atom: Cost of the first paid hour
SubsequentHourMultiplier = 2,   % Assumed atom: Multiplier for subsequent hours
TotalHours is 4,                % Assumed atom: Total hours from 5 PM to 9 PM
PaidHours is TotalHours - FreeHour,
TotalCost is FirstHourCost + (SubsequentHourMultiplier ^ (PaidHours - 1) * FirstHourCost).
% Query to find the total cost James paid for the carriage rental
query(TotalCost) :-
calculate_cost(TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).