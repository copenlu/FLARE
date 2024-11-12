% Define cooking time for rice
cooking_time(rice, 30).
% Calculate cooking time for pork
cooking_time(pork, Time) :-
cooking_time(rice, RiceTime),
Time is RiceTime + 20.
% Calculate cooking time for beans
cooking_time(beans, Time) :-
cooking_time(rice, RiceTime),
cooking_time(pork, PorkTime),
Time is (RiceTime + PorkTime) / 2.
% Calculate total cooking time for all items
total_cooking_time(TotalTime) :-
cooking_time(rice, RiceTime),
cooking_time(pork, PorkTime),
cooking_time(beans, BeansTime),
TotalTime is RiceTime + PorkTime + BeansTime.
% Query to calculate the total cooking time for all items
query(TotalTime) :-
total_cooking_time(TotalTime).
% Uncomment the following line to run the query and calculate the total cooking time
% ?- query(TotalTime).
%query(TotalTime).