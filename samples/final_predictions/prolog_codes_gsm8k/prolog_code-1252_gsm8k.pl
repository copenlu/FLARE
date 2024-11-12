% Define a predicate to calculate the total fabric needed for curtains
total_fabric_needed(NumWindows, WidthPerWindow, TotalFabric) :-
% Calculate the total width of all windows combined
TotalWidth is NumWindows * WidthPerWindow,
% Calculate the total fabric needed (2 times the total width)
TotalFabric is TotalWidth * 2.
% Define a query predicate to find out the total fabric needed for curtains
query(TotalFabric) :-
% Five windows, each 35 inches wide
total_fabric_needed(5, 35, TotalFabric).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalFabric).
%query(TotalFabric).