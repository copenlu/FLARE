% Define the rule to calculate the total cups of flour needed
% Params: CookiesToday, CookiesTomorrow, CupsPerDozen, TotalFlourNeeded
total_flour_needed(CookiesToday, CookiesTomorrow, CupsPerDozen, TotalFlourNeeded) :-
TotalCookies is CookiesToday + CookiesTomorrow,
TotalFlourNeeded is (TotalCookies / 12) * CupsPerDozen.
% Main predicate to compute the total cups of flour needed for baking cookies today and tomorrow
% Params: TotalFlourNeeded
calculate_flour_needed(TotalFlourNeeded) :-
% Constants
CookiesToday = 36,
CookiesTomorrow = 30,
CupsPerDozen = 2,
% Calculate total cups of flour needed
total_flour_needed(CookiesToday, CookiesTomorrow, CupsPerDozen, TotalFlourNeeded).
% Query predicate to get the total cups of flour needed
query(TotalFlourNeeded) :-
calculate_flour_needed(TotalFlourNeeded).
% Uncomment the following line to run the query
% query(TotalFlourNeeded).
%query(TotalFlourNeeded).