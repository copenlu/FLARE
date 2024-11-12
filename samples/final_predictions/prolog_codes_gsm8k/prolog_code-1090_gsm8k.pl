% Define the number of classes that visited the Science Center each day
classes_visited(monday, 32).
classes_visited(tuesday, 2 * 32).
classes_visited(wednesday, 3 * 32).
classes_visited(thursday, 30).
classes_visited(friday, 25).
% Define a rule to calculate the total number of classes visited last week
total_classes_visited(Total) :-
classes_visited(monday, MondayClasses),
classes_visited(tuesday, TuesdayClasses),
classes_visited(wednesday, WednesdayClasses),
classes_visited(thursday, ThursdayClasses),
classes_visited(friday, FridayClasses),
Total is MondayClasses + TuesdayClasses + WednesdayClasses + ThursdayClasses + FridayClasses.
% Query to find the total number of classes visited last week
query(Total) :-
total_classes_visited(Total).
% Uncomment the following line to run the query
% ?- query(Total).
%query(Total).