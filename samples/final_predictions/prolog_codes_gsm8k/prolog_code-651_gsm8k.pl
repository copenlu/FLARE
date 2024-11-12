% Define the rule to calculate the number of classes Manny can miss
classes_to_miss(TotalCost, TotalClasses, MaxClassesToAttend, ClassesToMiss) :-
CostPerClass is TotalCost / TotalClasses,          % Calculate the cost per class
MaxClassesToAttend is TotalCost / 10,              % Calculate the maximum classes Manny can attend
ClassesToMiss is TotalClasses - MaxClassesToAttend. % Calculate the number of classes Manny can miss
% Query to find the number of classes Manny can miss
query_classes_to_miss(ClassesToMiss) :-
classes_to_miss(60, 10, MaxClassesToAttend, ClassesToMiss).  % Given total cost and total classes
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_classes_to_miss(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).