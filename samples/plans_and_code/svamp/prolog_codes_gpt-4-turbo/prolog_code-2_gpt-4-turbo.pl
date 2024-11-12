% Define the rule to calculate the total number of cars in the parking lot
total_cars(InitialCars, CarsArrived, TotalCars) :-
TotalCars is InitialCars + CarsArrived.
% Define a predicate to run the query with specific initial conditions
query(TotalCars) :-
total_cars(3, 2, TotalCars).
% Uncomment the line below to run the query in SWI-Prolog
% ?- query(TotalCars).
%query(TotalCars).