% Define the rule to calculate the age difference between Alice and Erica
age_difference(AliceAge, EricaAge, Difference) :-
EricaAge is 30,            % Assumed atom/predicate: Erica's age is 30
BethAge is EricaAge - 5,   % Calculate Beth's age
AliceAge is BethAge + 7,   % Calculate Alice's age
Difference is AliceAge - EricaAge.  % Calculate the age difference
% Query to find the age difference between Alice and Erica
query(Difference) :-
age_difference(AliceAge, EricaAge, Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).