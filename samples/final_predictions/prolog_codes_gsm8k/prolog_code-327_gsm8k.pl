% Define the ratio of electric poles to electric wires
electric_poles_wires_ratio(1, 3).
% Calculate the total number of electric wires based on the ratio and number of poles
total_wires(Poles, Wires, TotalWires) :-
electric_poles_wires_ratio(Poles, Wires),
TotalWires is Poles * Wires.
% Calculate the total number of electric poles required based on the total number of wires
total_poles(TotalWires, Poles) :-
electric_poles_wires_ratio(OnePole, ThreeWires),
Poles is TotalWires // ThreeWires.
% Define a query predicate to run the program and get the result
query(Poles) :-
total_wires(1, 3, TotalWires),
total_poles(TotalWires, Poles).
% Uncomment the following line to run the query
% ?- query(Poles).
%query(Poles).