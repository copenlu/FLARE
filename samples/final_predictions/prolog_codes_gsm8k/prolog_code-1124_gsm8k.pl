% Define the rule to calculate the total number of people inside the church
total_people_inside_church(TotalPeople) :-
TotalCars = 20,          % Assumed atom: Total number of private cars
TotalBuses = 12,         % Assumed atom: Total number of buses
PeopleInCars is TotalCars * 3,    % Calculate the total number of people in cars
PeopleInBuses is TotalBuses * 35,  % Calculate the total number of people in buses
TotalPeople is PeopleInCars + PeopleInBuses.  % Calculate the total number of people inside the church
% Query to find the total number of people inside the church
query_total_people_inside_church(TotalPeople) :-
total_people_inside_church(TotalPeople).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_people_inside_church(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).