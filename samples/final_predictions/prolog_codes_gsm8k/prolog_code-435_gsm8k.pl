% Predicate to calculate the total capacity of buses
bus_capacity(TotalBusCapacity) :- TotalBusCapacity is 4 * 60.
% Predicate to calculate the total capacity of minibusses
minibus_capacity(TotalMinibusCapacity) :- TotalMinibusCapacity is 6 * 30.
% Predicate to calculate the total capacity of minivans
minivan_capacity(TotalMinivanCapacity) :- TotalMinivanCapacity is 10 * 15.
% Predicate to calculate the total capacity of all vehicles combined
total_capacity(TotalCapacity) :-
bus_capacity(BusCapacity),
minibus_capacity(MinibusCapacity),
minivan_capacity(MinivanCapacity),
TotalCapacity is BusCapacity + MinibusCapacity + MinivanCapacity.
% Query predicate to find the total number of employees that can join the day trip
query(TotalEmployees) :-
total_capacity(TotalEmployees).
% Uncomment the following line to run the query
% ?- query(TotalEmployees).
%query(TotalEmployees).