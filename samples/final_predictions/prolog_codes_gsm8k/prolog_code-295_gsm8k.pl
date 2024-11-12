% Define the number of stars in rows with 8 and 6 stars
stars_in_8_rows(3, 8).
stars_in_6_rows(2, 6).
% Calculate the total number of stars in rows with 8 and 6 stars
total_stars_in_8_rows(TotalStars8) :- stars_in_8_rows(NumRows8, StarsPerRow8), TotalStars8 is NumRows8 * StarsPerRow8.
total_stars_in_6_rows(TotalStars6) :- stars_in_6_rows(NumRows6, StarsPerRow6), TotalStars6 is NumRows6 * StarsPerRow6.
% Calculate the total number of rows with 5 stars
total_stars_on_flag(76).
total_rows_with_5_stars(TotalRows5) :-
total_stars_on_flag(TotalStars),
total_stars_in_8_rows(TotalStars8),
total_stars_in_6_rows(TotalStars6),
TotalStars5 is TotalStars - TotalStars8 - TotalStars6,
TotalRows5 is TotalStars5 / 5.
% Query predicate to run the program and get the result
query(TotalRows5) :-
total_rows_with_5_stars(TotalRows5).
% Uncomment the following line to run the query
% ?- query(TotalRows5).
%query(TotalRows5).