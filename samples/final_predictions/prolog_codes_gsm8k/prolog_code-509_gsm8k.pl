% Define the future_age_relationship predicate to represent the age relationship between Angela and Brett
future_age_relationship(AngelaAge, BrettAge) :-
AngelaAge is BrettAge + 4,  % In four years, Angela's age will be Brett's age plus 4
AngelaAge =:= 3 * BrettAge.  % Angela's age will be three times Brett's current age
% Query predicate to run the program and get the result
query(AngelaAge) :-
future_age_relationship(AngelaAge, 14).  % Brett's current age is 14
% Uncomment the following line to run the query
% ?- query(AngelaAge).
%query(AngelaAge).