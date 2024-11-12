% Define the cost of the computer (assumed known)
cost_computer(1100).  % Assumed cost of the computer is $1,100
% Define the total cost of the computer, 2 monitors, and a printer (assumed known)
total_cost(2400).  % Assumed total cost is $2,400
% Define the cost of the printer as $400 less than the computer
cost_printer(CostPrinter) :-
cost_computer(CostComputer),
CostPrinter is CostComputer - 400.
% Define the cost of one monitor based on the given information
cost_monitor(CostMonitor) :-
cost_computer(CostComputer),
cost_printer(CostPrinter),
total_cost(TotalCost),
CostMonitor is (TotalCost - CostComputer - 2 * CostPrinter) / 2.
% Query predicate to find the cost of one monitor
query(CostMonitor) :-
cost_monitor(CostMonitor).
% Uncomment the line below to run the query
% ?- query(CostMonitor).
%query(CostMonitor).