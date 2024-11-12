% Define the number of homes built in each year
homes_built_year1(12).
homes_built_year2(Year2) :- homes_built_year1(Year1), Year2 is Year1 * 3.
homes_built_year3(Year3) :- homes_built_year1(Year1), homes_built_year2(Year2), Year3 is (Year1 + Year2) * 2.
% Calculate the total number of homes built over the next three years
total_homes_built(TotalHomes) :-
homes_built_year1(Year1),
homes_built_year2(Year2),
homes_built_year3(Year3),
TotalHomes is Year1 + Year2 + Year3.
% Query predicate to find the total number of homes built over the next three years
query(TotalHomes) :-
total_homes_built(TotalHomes).
% Uncomment the line below to run the query
% query(TotalHomes).
%query(TotalHomes).