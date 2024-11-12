% Define the rule to calculate Trent's age based on the given information
trent_age(TrentAge) :-
QuinnAge is 30,  % Assumed atom/predicate: Quinn's age is 30
JaneAge is QuinnAge - 3,  % Jane is 3 years younger than Quinn
TrentAge is JaneAge + 5.  % Trent is 5 years older than Jane
% Define a predicate to execute the specific query with given values
query(TrentAge) :-
trent_age(TrentAge).
% Uncomment the line below to run the query
% ?- query(TrentAge).
%query(TrentAge).