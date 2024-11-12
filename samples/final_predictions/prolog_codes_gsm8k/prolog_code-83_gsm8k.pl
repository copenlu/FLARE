% Define the rule to calculate the stickers left
calculate_stickers_left(InitialStickers, BoughtStickers, BirthdayStickers, GivenToSister, UsedForCard, StickersLeft) :-
TotalStickers is InitialStickers + BoughtStickers + BirthdayStickers,  % Calculate the total number of stickers
StickersLeft is TotalStickers - GivenToSister - UsedForCard.          % Calculate the stickers left after transactions
% Query to find the stickers Charlie has left
query_stickers_left(StickersLeft) :-
calculate_stickers_left(10, 21, 23, 9, 28, StickersLeft).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_stickers_left(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).