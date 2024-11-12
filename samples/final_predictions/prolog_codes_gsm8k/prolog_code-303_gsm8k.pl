% Define the number of each exercise Darren does on the first day
pushups(100).
squats(50).
dumbbell_presses(20).
% Define the number of each exercise Darren does on the second day based on given conditions
pushups_second_day(SecondDayPushups) :- pushups(FirstDayPushups), SecondDayPushups is FirstDayPushups + 20.
squats_second_day(SecondDaySquats) :- squats(FirstDaySquats), SecondDaySquats is FirstDaySquats - 10.
dumbbell_presses_second_day(SecondDayDumbbellPresses) :- dumbbell_presses(FirstDayDumbbellPresses), SecondDayDumbbellPresses is FirstDayDumbbellPresses * 2.
% Define the total count of each exercise over the two days
total_count(TotalPushups, TotalSquats, TotalDumbbellPresses) :-
pushups(FirstDayPushups),
squats(FirstDaySquats),
dumbbell_presses(FirstDayDumbbellPresses),
pushups_second_day(SecondDayPushups),
squats_second_day(SecondDaySquats),
dumbbell_presses_second_day(SecondDayDumbbellPresses),
TotalPushups is FirstDayPushups + SecondDayPushups,
TotalSquats is FirstDaySquats + SecondDaySquats,
TotalDumbbellPresses is FirstDayDumbbellPresses + SecondDayDumbbellPresses.
% Query predicate to run the program and get the result
query(TotalPushups, TotalSquats, TotalDumbbellPresses) :-
total_count(TotalPushups, TotalSquats, TotalDumbbellPresses).
% Uncomment the following line to run the query
% ?- query(TotalPushups, TotalSquats, TotalDumbbellPresses).
%query(TotalPushups, TotalSquats, TotalDumbbellPresses).