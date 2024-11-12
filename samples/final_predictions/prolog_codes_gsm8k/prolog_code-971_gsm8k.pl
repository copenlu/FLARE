% Define the rule to calculate the total number of stickers
calculate_stickers(InitialStickers, LostStickers, GainedStickers, TotalStickers) :-
TotalStickers is InitialStickers - LostStickers + GainedStickers.
% Predicate to calculate the total number of stickers Jasmine has at the end
calculate_jasmines_stickers(TotalStickers) :-
calculate_stickers(15, 7, 5, TotalStickers).  % Initial stickers, lost stickers, gained stickers
% Query to find the total number of stickers Jasmine has
query(TotalStickers) :-
calculate_jasmines_stickers(TotalStickers).
% Uncomment the following line to run the query
% ?- query(TotalStickers).
%query(TotalStickers).