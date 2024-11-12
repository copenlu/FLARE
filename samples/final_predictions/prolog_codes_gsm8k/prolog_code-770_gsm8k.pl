% Define the rule to calculate the final count of bananas
final_banana_count(InitialCount, FinalCount) :-
% Arnold steals half of the bananas
ArnoldFirstCount is InitialCount / 2,
% Gunther adds 25 bananas
GuntherFirstCount is ArnoldFirstCount + 25,
% Arnold steals 12 bananas
ArnoldSecondCount is GuntherFirstCount - 12,
% Gunther adds 6 bananas
FinalCount is ArnoldSecondCount + 6.
% Query to find the final count of bananas after all interactions
query(FinalCount) :-
final_banana_count(48, FinalCount).
% Uncomment the line below to run the query
% ?- query(FinalCount).
%query(FinalCount).