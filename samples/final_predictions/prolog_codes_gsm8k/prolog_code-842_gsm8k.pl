% Define the initial count of cars when entering class
initial_count(50).
% Define the count of cars during the first break
first_break_count(20).
% Calculate the number of cars remaining during the lunch break
remaining_cars_lunch_break(RemainingCars) :-
initial_count(InitialCount),
first_break_count(FirstBreakCount),
TotalCountFirstBreak is InitialCount + FirstBreakCount,
RemainingCars is TotalCountFirstBreak // 2.
% Query predicate to find the total number of cars during the lunch break
query(RemainingCars) :-
remaining_cars_lunch_break(RemainingCars).
% Uncomment the line below to run the query
% query(RemainingCars).
%query(RemainingCars).