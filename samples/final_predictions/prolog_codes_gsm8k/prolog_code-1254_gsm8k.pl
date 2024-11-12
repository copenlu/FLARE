% Define a predicate to calculate the total amount of rain expected on Tuesday
rain_on_tuesday(MondayRain, TuesdayRain) :-
% Calculate twice the amount of rain that fell on Monday
TwiceMondayRain is 2 * MondayRain,
% Calculate the total amount of rain expected on Tuesday
TuesdayRain is TwiceMondayRain + 1.
% Define a query predicate to find out the amount of rain expected on Tuesday
query(TuesdayRain) :-
% Given that it rained 2 inches on Monday
rain_on_tuesday(2, TuesdayRain).
% Uncomment the line below to run the query in SWI-Prolog
% query(TuesdayRain).
%query(TuesdayRain).