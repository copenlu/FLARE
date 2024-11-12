% Define the rule to calculate the number of men who can stay upright
men_stay_upright(TotalRiders, MenStayUpright) :-
RidersStayUpright is TotalRiders * 0.25,      % Calculate total riders who can stay upright
WomenStayUpright is RidersStayUpright * 0.60, % Calculate women riders who can stay upright
MenStayUpright is RidersStayUpright - WomenStayUpright. % Calculate men riders who can stay upright
% Query to find the number of men who can stay upright out of 100 riders
query_men_stay_upright(MenStayUpright) :-
men_stay_upright(100, MenStayUpright).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_men_stay_upright(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).