% Define the rule to calculate the number of jelly beans of each color
jelly_beans_count(RedBeans, BlueBeans, GreenBeans) :-
BlueBeans is 100,               % Assumed atom/predicate: Let the number of blue beans be 100
RedBeans is 0.99 * BlueBeans,   % Calculate the number of red beans
GreenBeans is 1.01 * BlueBeans, % Calculate the number of green beans
TotalBeans is RedBeans + BlueBeans + GreenBeans, % Calculate the total number of beans
TotalBeans = 4500.              % Total number of beans in the jar is 4500
% Calculate the difference between green and red jelly beans
green_red_difference(Difference) :-
jelly_beans_count(Red, _, Green), % Get the counts of red and green beans
Difference is Green - Red.       % Calculate the difference between green and red beans
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
green_red_difference(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).