% Define the rule to calculate ages based on the relationships
calculate_age_difference(MarcusAge, LeoAge, DeannaAge) :-
DeannaAge is 26,
MarcusAge is DeannaAge - 5,
LeoAge is 2 * MarcusAge.
% Predicate to encapsulate the entire calculation and output Leo's age
calculate_leos_age(LeoAge) :-
calculate_age_difference(_, LeoAge, _).  % We are interested in Leo's age
% Query to find Leo's age
query(LeoAge) :-
calculate_leos_age(LeoAge).
% Uncomment the following line to run the query
% ?- query(LeoAge).
%query(LeoAge).