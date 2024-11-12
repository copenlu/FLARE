% Define cars with attributes: name, country, year_of_manufacture
car(benz_patent_motorwagen, germany, 1886).
car(ford_model_t, usa, 1908).
car(mini, uk, 1959).
% Define what constitutes an early car (before 1900)
early_car(Name) :-
car(Name, _, Year),
Year < 1900.
% Check if a car was the first ever manufactured
is_first_car(Name) :-
car(Name, _, Year),
\+ (car(_, _, OtherYear), OtherYear < Year).
% Check if a car introduced significant innovations
innovative_car(mini) :- % Assumed predicate based on historical significance
car(mini, _, _).
% Define the historical significance of the Mini
historical_significance(mini, significant) :-
innovative_car(mini).
% Query to determine if Mini was the first car manufactured
query :-
is_first_car(mini).
% The following line is the driver predicate, it should remain commented out
% query.
% query.