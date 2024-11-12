% Define the rule to calculate the total number of stickers in Leo's collection
total_stickers_in_collection(TotalStickers) :-
InitialStickers = 100,          % Initial number of stickers two years ago
StickersLastYear = 50,          % Number of stickers collected last year
StickersThisYear is StickersLastYear * 2,  % Number of stickers collected this year
TotalStickersLastTwoYears is StickersLastYear + StickersThisYear,  % Total stickers collected in the last two years
TotalStickers is InitialStickers + TotalStickersLastTwoYears.      % Total number of stickers in Leo's collection
% Query predicate to get the total number of stickers in Leo's collection
query(TotalStickers) :-
total_stickers_in_collection(TotalStickers).
% Uncomment the following line to run the query
% ?- query(TotalStickers).
%query(TotalStickers).