% Define the total_kids predicate to calculate the total number of kids in the park
total_kids(Girls, TotalKids) :-
Boys is Girls * 2,  % Number of boys is twice the number of girls
TotalKids is Girls + Boys.  % Total number of kids is the sum of boys and girls
% Query predicate to run the program and get the result
query(TotalKids) :-
total_kids(6, TotalKids).  % Given there are 6 girls in the park
% Uncomment the following line to run the query
% ?- query(TotalKids).
%query(TotalKids).