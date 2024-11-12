% Define the time taken to peel a potato and cut a potato
time_to_peel(1.5). % Assumed atom/predicate
time_to_cut(5/60). % Assumed atom/predicate
% Calculate the total time taken to prep one potato
total_time_for_one_potato(TotalTime) :-
time_to_peel(PeelTime),
time_to_cut(CutTime),
TotalTime is PeelTime + CutTime.
% Calculate the total time taken to prep all 60 potatoes
total_time_for_all_potatoes(TotalTime) :-
total_time_for_one_potato(OnePotatoTime),
TotalTime is OnePotatoTime * 60.
% Query to find out how long it will take Billy to finish prepping the potatoes
query(TotalTime) :-
total_time_for_all_potatoes(TotalTime).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalTime).
%query(TotalTime).