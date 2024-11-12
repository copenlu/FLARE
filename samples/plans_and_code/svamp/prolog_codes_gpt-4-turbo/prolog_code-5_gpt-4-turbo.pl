% Define the rule to calculate the final number of computers in the server room
total_computers(InitialComputers, Days, ComputersPerDay, FinalComputers) :-
TotalAdded is Days * ComputersPerDay,  % Calculate total computers added over the days
FinalComputers is InitialComputers + TotalAdded.  % Sum initial computers and total added
% Predicate to execute the query with given initial conditions
query(FinalComputers) :-
InitialComputers = 9,  % Initial number of computers
Days = 4,  % Number of days from Monday to Thursday
ComputersPerDay = 5,  % Number of computers added each day
total_computers(InitialComputers, Days, ComputersPerDay, FinalComputers).
% Uncomment the line below to run the query in SWI-Prolog
% ?- query(FinalComputers).
%query(FinalComputers).