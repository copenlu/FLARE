% Define the age of Bill's dad when he saw the comet
dad_age_when_saw_comet(30).
% Calculate Bill's age when he saw the comet for the first time
bill_age_first_comet(Age) :-
dad_age_when_saw_comet(DadAge),
Age is 3 * (DadAge + 30).  % Bill's age when he saw the comet is three times his dad's age plus 30
% Query predicate to find Bill's age when he saw the comet for the first time
query(Age) :-
bill_age_first_comet(Age).
% Uncomment the line below to run the query
% query(Age).
%query(Age).