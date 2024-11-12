% Define the rule to calculate the ages of Mike, Martha, and Jeff
calculate_ages(MikeAge, MarthaAge, JeffAge) :-
MikeAge is 24,                  % Assumed atom/predicate: Mike's age is 24
MarthaAge is MikeAge - 4,       % Calculate Martha's age
JeffAge is MarthaAge + 10.      % Calculate Jeff's age
% Query to find Jeff's age
query_jeff_age(JeffAge) :-
calculate_ages(_, _, JeffAge).  % Query to calculate Jeff's age
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_jeff_age(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).