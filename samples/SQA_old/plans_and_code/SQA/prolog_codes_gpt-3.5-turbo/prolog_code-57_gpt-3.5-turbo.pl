% Assumed atom/predicate
element(carbon_dioxide, high).
element(water_vapor, low).
element(sunlight, moderate).
has_element(carbon) :- element(carbon_dioxide, high).
has_element(oxygen) :- element(carbon_dioxide, high).
has_element(hydrogen) :- element(water_vapor, low).
can_photosynthesize :-
has_element(carbon),
has_element(oxygen),
has_element(hydrogen),
element(sunlight, moderate).
% User query
query :- can_photosynthesize.
%query.