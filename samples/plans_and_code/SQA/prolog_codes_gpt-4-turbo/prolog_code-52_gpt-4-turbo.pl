% Define financial metrics for each franchise
franchise_metrics(harry_potter, production_costs, 1250). % in millions
franchise_metrics(harry_potter, box_office, 7700). % in millions
franchise_metrics(harry_potter, merchandise, 15000). % in millions, assumed value
franchise_metrics(harry_potter, streaming_rights, 500). % in millions, assumed value
franchise_metrics(the_matrix, production_costs, 363). % in millions
franchise_metrics(the_matrix, box_office, 3000). % in millions
franchise_metrics(the_matrix, merchandise, 500). % in millions, assumed value
franchise_metrics(the_matrix, streaming_rights, 100). % in millions, assumed value
% Calculate ROI
roi(Franchise, ROI) :-
franchise_metrics(Franchise, production_costs, Costs),
franchise_metrics(Franchise, box_office, BoxOffice),
franchise_metrics(Franchise, merchandise, Merchandise),
franchise_metrics(Franchise, streaming_rights, Streaming),
TotalRevenue is BoxOffice + Merchandise + Streaming,
ROI is TotalRevenue / Costs.
% Compare ROI of two franchises
better_investment(Franchise1, Franchise2, Better) :-
roi(Franchise1, ROI1),
roi(Franchise2, ROI2),
(ROI1 > ROI2 -> Better = Franchise1; Better = Franchise2).
% Query to determine if Harry Potter was a better investment than The Matrix
query :-
better_investment(harry_potter, the_matrix, harry_potter).
% Uncomment the following line to run the query in SWI-Prolog
 :- query.
%query.