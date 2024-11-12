% Define the production and marketing costs
budget(king_kong_2005, 207). % Assumed budget in million USD
% Define box office earnings
box_office(king_kong_2005, 562). % Assumed global box office in million USD
% Define home media sales
home_media_sales(king_kong_2005, 100). % Assumed home media sales in million USD
% Define merchandising revenue
merchandising_revenue(king_kong_2005, 50). % Assumed merchandising revenue in million USD
% Calculate total revenue from all sources
total_revenue(Film, TotalRevenue) :-
box_office(Film, BoxOffice),
home_media_sales(Film, HomeMedia),
merchandising_revenue(Film, Merchandising),
TotalRevenue is BoxOffice + HomeMedia + Merchandising.
% Determine if the film was solvent
is_solvent(Film) :-
budget(Film, Budget),
total_revenue(Film, Revenue),
Revenue >= Budget.
% Query predicate to determine if King Kong (2005) was solvent
query :-
is_solvent(king_kong_2005).
% Uncomment the line below to run the query
% ?- query.
% ?- query.