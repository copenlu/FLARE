% Calculate Lee's original running time
lee_original_time(GeraldTime, LeeTime) :-
LeeTime is GeraldTime - 2.
% Calculate Gerald's original running time
gerald_original_time(LeeTime, GeraldTime) :-
GeraldTime is LeeTime + 2.
% Calculate Gerald's new running time after 10% improvement
gerald_new_time(OriginalTime, NewTime) :-
NewTime is OriginalTime * 0.9.
% Given information
lee_time(38).
% Query to find Gerald's new running time
query(NewTime) :-
lee_time(LeeTime),
gerald_original_time(LeeTime, GeraldTime),
gerald_new_time(GeraldTime, NewTime).
% Uncomment the following line to run the query and calculate Gerald's new running time
% ?- query(NewTime).
%query(NewTime).