% Define the total cost of business suits
total_suit_cost(TotalSuitCost) :-
TotalSuitCost is 6 * 100.  % 6 business suits at $100 each
% Define the total cost of suitcases
total_suitcase_cost(TotalSuitcaseCost) :-
TotalSuitcaseCost is 3 * 50.  % 3 suitcases at $50 each
% Define the cost of the flight ticket
flight_ticket_cost(SuitCost, FlightCost) :-
FlightCost is 5 * SuitCost + 700.  % Flight ticket costs $700 more than 5 times the cost of a business suit
% Define the total savings for the trip
total_savings(Savings) :-
Savings is 2000.  % Theo saves $2000 for the trip
% Define the remaining budget after deducting expenses and savings
remaining_budget(RemainingBudget) :-
total_suit_cost(SuitCost),
total_suitcase_cost(SuitcaseCost),
flight_ticket_cost(SuitCost, FlightCost),
total_savings(Savings),
RemainingBudget is 6000 - (SuitCost + SuitcaseCost + FlightCost + Savings).
% Query predicate to run the program and get the result
query(RemainingBudget) :-
remaining_budget(RemainingBudget).
% Uncomment the following line to run the query
% ?- query(RemainingBudget).
%query(RemainingBudget).