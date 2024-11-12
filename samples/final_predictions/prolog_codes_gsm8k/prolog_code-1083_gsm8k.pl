% Predicate to calculate the total number of movies watched per weekend
% Params: MoviesWatchedSaturday, MoviesWatchedSunday, TotalMoviesPerWeekend
total_movies_per_weekend(MoviesWatchedSaturday, MoviesWatchedSunday, TotalMoviesPerWeekend) :-
TotalMoviesPerWeekend is MoviesWatchedSaturday + MoviesWatchedSunday.
% Predicate to calculate the total number of movies watched in 4 weeks
% Params: TotalMoviesPerWeekend, NumWeekends, TotalMoviesIn4Weeks
total_movies_in_4_weeks(TotalMoviesPerWeekend, NumWeekends, TotalMoviesIn4Weeks) :-
TotalMoviesIn4Weeks is TotalMoviesPerWeekend * NumWeekends.
% Main predicate to compute the total number of movies watched in 4 weeks
% Params: TotalMoviesIn4Weeks
calculate_total_movies_in_4_weeks(TotalMoviesIn4Weeks) :-
% Constants
MoviesWatchedSaturday = 4,
MoviesWatchedSunday is MoviesWatchedSaturday / 2,
NumWeekends = 4,
% Calculate total movies watched per weekend
total_movies_per_weekend(MoviesWatchedSaturday, MoviesWatchedSunday, TotalMoviesPerWeekend),
% Calculate total movies watched in 4 weeks
total_movies_in_4_weeks(TotalMoviesPerWeekend, NumWeekends, TotalMoviesIn4Weeks).
% Query predicate to get the total number of movies watched in 4 weeks
query(TotalMoviesIn4Weeks) :-
calculate_total_movies_in_4_weeks(TotalMoviesIn4Weeks).
% Uncomment the following line to run the query
% query(TotalMoviesIn4Weeks).
%query(TotalMoviesIn4Weeks).