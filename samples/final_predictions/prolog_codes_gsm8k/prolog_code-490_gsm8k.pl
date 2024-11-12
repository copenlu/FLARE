% Define constants
employees_per_group(200).
number_of_groups(3).
tour_guides_per_group(7).
% Calculate total number of employees
total_employees(TotalEmployees) :-
employees_per_group(EmployeesPerGroup),
number_of_groups(NumGroups),
TotalEmployees is EmployeesPerGroup * NumGroups.
% Calculate total number of tour guides
total_tour_guides(TotalTourGuides) :-
tour_guides_per_group(TourGuidesPerGroup),
number_of_groups(NumGroups),
TotalTourGuides is TourGuidesPerGroup * NumGroups.
% Calculate total number of people going on the tour
total_people_on_tour(TotalPeople) :-
total_employees(TotalEmployees),
total_tour_guides(TotalTourGuides),
TotalPeople is TotalEmployees + TotalTourGuides.
% Query to calculate the total number of people going on the tour
query(TotalPeople) :-
total_people_on_tour(TotalPeople).
% Uncomment the following line to run the query and calculate the total number of people going on the tour
% ?- query(TotalPeople).
%query(TotalPeople).