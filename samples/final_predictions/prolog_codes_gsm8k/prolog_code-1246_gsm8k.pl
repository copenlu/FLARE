% Define a predicate to calculate the number of passengers at the first stop
passengers_first_stop(InitialPassengers, FirstStopAddition, TotalFirstStop) :-
TotalFirstStop is InitialPassengers + FirstStopAddition.
% Define a predicate to calculate the number of passengers at the second stop
passengers_second_stop(TotalFirstStop, TotalSecondStop) :-
TotalSecondStop is TotalFirstStop + (3/4) * TotalFirstStop.
% Define a predicate to calculate the number of passengers at the third stop
passengers_third_stop(TotalSecondStop, TotalThirdStop) :-
TotalThirdStop is 2 * TotalSecondStop.
% Define a predicate to calculate the remaining spaces on the bus
remaining_spaces(TotalPassengers, RemainingSpaces) :-
RemainingSpaces is 200 - TotalPassengers.
% Define a query predicate to find out the total number of people required to fill the remaining spaces on the bus
query(RemainingSpaces) :-
% Initial passengers: 20, passengers added at first stop: 40
passengers_first_stop(20, 40, TotalFirstStop),
passengers_second_stop(TotalFirstStop, TotalSecondStop),
passengers_third_stop(TotalSecondStop, TotalThirdStop),
remaining_spaces(TotalThirdStop, RemainingSpaces).
% Uncomment the line below to run the query in SWI-Prolog
% query(RemainingSpaces).
%query(RemainingSpaces).