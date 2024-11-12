% Define the rule to calculate the total number of functioning street lights
total_functioning_street_lights(PolesPerIntersection, LightsPerPole, TotalNonFunctioning, TotalFunctioning) :-
TotalLightsPerIntersection is PolesPerIntersection * LightsPerPole,  % Calculate total lights per intersection
TotalLights is TotalLightsPerIntersection * 4,  % Calculate total lights for all intersections
TotalFunctioning is TotalLights - TotalNonFunctioning.  % Calculate total functioning lights
% Query to find the total number of functioning street lights
query_total_functioning_street_lights(TotalFunctioning) :-
total_functioning_street_lights(6, 4, 20, TotalFunctioning).  % Given values: 6 poles, 4 lights per pole, 20 non-functioning lights
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_functioning_street_lights(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).