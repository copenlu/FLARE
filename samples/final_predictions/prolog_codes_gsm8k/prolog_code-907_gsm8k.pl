% Define the number of chimichangas made on each day
chimichangas(tuesday, 125).
chimichangas(wednesday, 125).
chimichangas(friday, 500).
% Define the predicate to calculate the total number of chimichangas made on all three days
total_chimichangas(Total) :-
chimichangas(tuesday, TuesdayCount),  % Number of chimichangas made on Tuesday
chimichangas(wednesday, WednesdayCount),  % Number of chimichangas made on Wednesday
chimichangas(friday, FridayCount),  % Number of chimichangas made on Friday
Total is TuesdayCount + WednesdayCount + FridayCount.  % Calculate the total number of chimichangas
% Query predicate to run the program and get the result
query(Total) :-
total_chimichangas(Total).
% Uncomment the following line to run the query
% ?- query(Total).
%query(Total).