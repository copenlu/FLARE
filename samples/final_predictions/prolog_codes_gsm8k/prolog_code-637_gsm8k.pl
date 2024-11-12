% Define the rule to calculate the total cost of physical therapy
calculate_physical_therapy_cost(Weeks, SessionsPerWeek, HoursPerSession, CostPerHour, TotalCost) :-
TotalSessions is Weeks * SessionsPerWeek,    % Calculate the total number of sessions
TotalHours is TotalSessions * HoursPerSession,  % Calculate the total number of hours
TotalCost is TotalHours * CostPerHour.         % Calculate the total cost
% Query to find the total cost of physical therapy for John
query(TotalCost) :-
calculate_physical_therapy_cost(6, 2, 2, 125, TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).