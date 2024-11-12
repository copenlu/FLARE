% Define rules for finding eggs
eggs_found_by_lamar(5).
eggs_found_by_stacy(StacyEggs) :- eggs_found_by_lamar(LamarEggs), StacyEggs is 2 * LamarEggs.
eggs_found_by_charlie(CharlieEggs) :- eggs_found_by_stacy(StacyEggs), CharlieEggs is StacyEggs - 2.
eggs_found_by_mei(MeiEggs) :- eggs_found_by_charlie(CharlieEggs), MeiEggs is CharlieEggs / 2.
% Calculate the total number of eggs found
total_eggs_found(TotalFound) :-
eggs_found_by_lamar(LamarEggs),
eggs_found_by_stacy(StacyEggs),
eggs_found_by_charlie(CharlieEggs),
eggs_found_by_mei(MeiEggs),
TotalFound is LamarEggs + StacyEggs + CharlieEggs + MeiEggs.
% Calculate the number of eggs still hidden
eggs_still_hidden(StillHidden) :-
TotalHidden = 3 * 12,  % 3 dozen eggs initially hidden
total_eggs_found(TotalFound),
StillHidden is TotalHidden - TotalFound.
% Main query predicate to get the number of eggs still hidden
query(StillHidden) :-
eggs_still_hidden(StillHidden).
% Uncomment the following line to run the query
% query(StillHidden).
%query(StillHidden).