% Define the amount of money Eva has saved
eva_savings(20.00).
% Calculate Anthony's savings based on Eva's savings
anthony_savings(EvaSavings, AnthonySavings) :-
AnthonySavings is EvaSavings + 10.00.
% Calculate Roy's savings based on Anthony's savings
roy_savings(AnthonySavings, RoySavings) :-
RoySavings is AnthonySavings + (0.40 * AnthonySavings).  % Roy has saved 40% more than Anthony
% Query predicate to find the amount of money Roy has saved
query(RoySavings) :-
eva_savings(EvaSavings),
anthony_savings(EvaSavings, AnthonySavings),
roy_savings(AnthonySavings, RoySavings).
% Uncomment the line below to run the query
% query(RoySavings).
%query(RoySavings).