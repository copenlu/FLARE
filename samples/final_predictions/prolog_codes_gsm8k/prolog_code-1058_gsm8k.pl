% Define the rule to calculate the number of small beans Grandpa can eat
small_beans_eaten(SmallBeans) :-
LargeBeans = 75,  % Assumed atom/predicate: Number of large beans that fill Grandpa up
MediumBeans is LargeBeans * 2,  % Calculate the number of medium beans Grandpa can eat
TotalSmallBeans is MediumBeans * 3,  % Calculate the total number of small beans equivalent to medium beans
SmallBeans is TotalSmallBeans / 3.  % Calculate the number of small beans Grandpa can eat
% Query to find the number of small beans Grandpa can eat
query(SmallBeans) :-
small_beans_eaten(SmallBeans).
% Uncomment the following line to run the query
% ?- query(SmallBeans).
%query(SmallBeans).