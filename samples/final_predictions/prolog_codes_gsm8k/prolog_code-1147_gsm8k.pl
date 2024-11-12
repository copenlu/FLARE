% Define the time taken by Amalia to mow the lawn
amalia_time(4).
% Define the time taken by Megan to walk the dog (2 hours more than Amalia)
megan_time(Time) :-
amalia_time(AmaliaTime),
Time is AmaliaTime + 2.
% Define the time taken by Dior to do laundry (well over 4 hours more than Amalia)
dior_time(Time) :-
amalia_time(AmaliaTime),
Time is AmaliaTime + 4.
% Calculate the total time taken by all three individuals to complete their chores
total_time(TotalTime) :-
amalia_time(AmaliaTime),
megan_time(MeganTime),
dior_time(DiorTime),
TotalTime is AmaliaTime + MeganTime + DiorTime.
% Query predicate to run the program and get the result
query(TotalTime) :-
total_time(TotalTime).
% Uncomment the following line to run the query
% ?- query(TotalTime).
%query(TotalTime).