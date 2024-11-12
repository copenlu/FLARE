% Define the predicate to calculate half of the stickers received
half_stickers_received(X, Y) :-
Y is X / 2.
% Define the predicate to calculate the remaining stickers after giving away a certain amount
remaining_stickers(X, Y, Z) :-
Z is X - Y.
% Define the sticker distribution process
sticker_distribution(SethStickers) :-
half_stickers_received(SethStickers, LuisReceived),  % Seth gives half of his stickers to Luis
half_stickers_received(LuisReceived, KrisReceived),  % Luis uses half of the stickers and gives the rest to Kris
remaining_stickers(LuisReceived, KrisReceived, RobReceived),  % Kris keeps some stickers and gives the rest to Rob
remaining_stickers(SethStickers, LuisReceived, _).  % Determine the initial number of stickers Seth had
% Query predicate to run the program and get the result
query(SethStickers) :-
sticker_distribution(SethStickers).
% Uncomment the following line to run the query
% ?- query(SethStickers).
%query(SethStickers).