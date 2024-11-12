% Define the rule to calculate the total number of novels Regina has written this year
total_novels_this_year(LastYearNovels, TotalNovels) :-
TotalNovels is LastYearNovels / (3/4).  % Calculate the total novels written this year
% Query to find the total number of novels Regina has written this year when she wrote 9 novels last year
query_total_novels_this_year(TotalNovels) :-
total_novels_this_year(9, TotalNovels).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_novels_this_year(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).