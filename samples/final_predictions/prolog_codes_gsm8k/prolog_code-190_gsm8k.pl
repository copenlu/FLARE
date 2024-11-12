% Define a predicate to calculate the total number of apples picked by Jenna and her mother
total_apples_picked(JennaApples, MotherApples, TotalApples) :-
JennaApples is MotherApples / 2,  % Jenna picked half as many apples as her mother
TotalApples is JennaApples + MotherApples.  % Total apples picked by both
% Define a query predicate to find out the total number of apples picked by Jenna and her mother
query(TotalApples) :-
% Mother picked 20 apples
total_apples_picked(JennaApples, 20, TotalApples).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalApples).
%query(TotalApples).