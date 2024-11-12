% Define the total_cost_jello predicate to calculate the total cost of jello
% Assumed atoms: CostPerBox = $1.25, JelloCupsPerBox = 10, Kids = 30, JelloCupsPerKid = 4
total_cost_jello(TotalCost) :-
CostPerBox = 1.25,  % Cost per jello box in dollars
JelloCupsPerBox = 10,  % Number of jello cups per box
Kids = 30,  % Number of kids at the party
JelloCupsPerKid = 4,  % Number of jello cups per kid
TotalJelloCups is Kids * JelloCupsPerKid,  % Calculate total jello cups needed
TotalJelloBoxes is TotalJelloCups / JelloCupsPerBox,  % Calculate total jello boxes needed
TotalCost is TotalJelloBoxes * CostPerBox.  % Calculate total cost of jello
% Query predicate to run the program and get the result
query(TotalCost) :-
total_cost_jello(TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).