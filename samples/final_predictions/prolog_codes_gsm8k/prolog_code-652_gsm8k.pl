% Define the rule to calculate daily production for Jewel and Julie
daily_production(JewelProduction, JulieProduction) :-
JewelProduction is 50,                      % Assumed atom: Jewel processes 50 customers daily
JulieProduction is 2 * JewelProduction.     % Julie operates the cash register twice as fast as Jewel
% Define the rule to calculate total weekly production for both Jewel and Julie
weekly_production(JewelDaily, JulieDaily, TotalWeekly) :-
DaysInWeek is 7,                            % Number of days in a week
TotalWeekly is (JewelDaily + JulieDaily) * DaysInWeek.
% Query to find the total weekly production for Jewel and Julie
query_weekly_production(TotalWeekly) :-
daily_production(JewelProduction, JulieProduction),
weekly_production(JewelProduction, JulieProduction, TotalWeekly).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_weekly_production(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).