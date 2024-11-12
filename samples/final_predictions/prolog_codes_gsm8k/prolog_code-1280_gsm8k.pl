% Define the rule to calculate the total number of flashlights needed
total_flashlights(TotalFlashlights) :-
NumPeople = 4,  % Assumed atom/predicate: Number of people in the house
NumRooms = 8,   % Assumed atom/predicate: Number of rooms in the house
TotalFlashlights is NumPeople + (NumRooms * 2).
% Define the rule to calculate the total number of candles needed
total_candles(TotalCandles) :-
NumRooms = 8,               % Assumed atom/predicate: Number of rooms in the house
SmallCandlesPerRoom = 4,    % Assumed atom/predicate: Number of small candles per room
MediumCandlesPerRoom = 5,   % Assumed atom/predicate: Number of medium candles per room
TotalCandles is (NumRooms / 2) * SmallCandlesPerRoom + (NumRooms / 2) * MediumCandlesPerRoom.
% Define the rule to calculate the total number of items used
total_items(TotalFlashlights, TotalCandles, TotalItems) :-
TotalItems is TotalFlashlights + TotalCandles.
% Query to find the total number of candles and flashlights used
query_total_items(TotalItems) :-
total_flashlights(TotalFlashlights),
total_candles(TotalCandles),
total_items(TotalFlashlights, TotalCandles, TotalItems).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_items(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).