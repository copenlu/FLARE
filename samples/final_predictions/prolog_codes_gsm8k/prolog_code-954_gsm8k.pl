% Define the rule to calculate Paul's age based on Jean's age
paul_age(PaulAge, JeanAge) :-
PaulAge is JeanAge + 10.
% Define the rule to calculate Peter's age based on Paul and Jean's age
peter_age(PeterAge, PaulAge, JeanAge) :-
PeterAge is PaulAge + JeanAge.
% Define the rule to find the age of Peter given the total sum of ages is 100
find_peter_age(PeterAge) :-
paul_age(PaulAge, JeanAge),          % Calculate Paul's age
peter_age(PeterAge, PaulAge, JeanAge),  % Calculate Peter's age
PeterAge + PaulAge + JeanAge =:= 100.   % Ensure the total sum of ages is 100
% Query to find the age of Peter
query(PeterAge) :-
find_peter_age(PeterAge).
% Uncomment the line below to run the query
% ?- query(PeterAge).
%query(PeterAge).