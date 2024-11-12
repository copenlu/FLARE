% Define the total number of movies Mike has
total_movies(600).
% Calculate the cost of movies in series (1/3 of total movies at $6 each)
cost_series_movies(TotalMovies, CostSeriesMovies) :-
SeriesMovies is TotalMovies // 3,
CostSeriesMovies is SeriesMovies * 6.
% Calculate the cost of older movies (40% of remaining movies at $5 each)
cost_older_movies(RemainingMovies, CostOlderMovies) :-
OlderMovies is RemainingMovies * 40 // 100,
CostOlderMovies is OlderMovies * 5.
% Calculate the total cost of replacing the movie collection
total_replacement_cost(TotalMovies, TotalCost) :-
cost_series_movies(TotalMovies, CostSeries),
RemainingMovies is TotalMovies - TotalMovies // 3,
cost_older_movies(RemainingMovies, CostOlder),
TotalCost is CostSeries + CostOlder.
% Query predicate to find the total cost of replacing the movie collection
query(TotalCost) :-
total_movies(TotalMovies),
total_replacement_cost(TotalMovies, TotalCost).
% Uncomment the line below to run the query
% query(TotalCost).
%query(TotalCost).