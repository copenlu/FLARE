% Define the number of bees that initially left and returned
initial_leave_return(InitialLeave, InitialReturn) :-
InitialLeave is 30,
InitialReturn is InitialLeave / 2.
% Define the number of additional bees that left the hive
additional_leave(AdditionalLeave) :-
initial_leave_return(InitialLeave, _),
AdditionalLeave is 2 * InitialLeave.
% Define the total number of bees that left and returned
total_return(TotalReturn) :-
initial_leave_return(_, InitialReturn),
additional_leave(AdditionalLeave),
TotalReturn is InitialReturn + AdditionalLeave.
% Calculate the number of bees that return in the last 6 hours
bees_return_last_6_hours(ReturnLast6Hours) :-
total_return(TotalReturn),
% Query to find out the number of bees that return in the last 6 hours
query(ReturnLast6Hours) :-
bees_return_last_6_hours(ReturnLast6Hours).
% Uncomment the following line to run the query and determine the number of bees that return in the last 6 hours
% ?- query(ReturnLast6Hours).
%query(ReturnLast6Hours).