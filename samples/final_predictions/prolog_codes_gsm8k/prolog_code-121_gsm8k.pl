% Define the number of vehicles in each container
vehicles_per_container(5).
% Calculate the total number of vehicles based on the initial containers
total_vehicles_initial_containers(TotalVehicles) :-
vehicles_per_container(VehiclesPerContainer),
TotalVehicles is 2 * VehiclesPerContainer.
% Calculate the number of containers imported on the second day
containers_imported_second_day(NumContainers) :-
total_vehicles_initial_containers(InitialVehicles),
TotalVehicles is 30,
AdditionalVehicles is TotalVehicles - InitialVehicles,
vehicles_per_container(VehiclesPerContainer),
NumContainers is AdditionalVehicles / VehiclesPerContainer.
% Query to calculate the number of containers imported on the second day
query(NumContainers) :-
containers_imported_second_day(NumContainers).
% Uncomment the following line to run the query and calculate the number of containers imported on the second day
% ?- query(NumContainers).
%query(NumContainers).