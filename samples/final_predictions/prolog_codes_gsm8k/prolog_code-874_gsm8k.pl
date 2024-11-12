% Define the time taken to clean each room
cleaning_time_per_room(20).  % Assumed time in minutes to clean each room
% Define the total number of rooms at KozyInn Motel
total_rooms(90).  % Assumed total number of rooms
% Calculate the number of rooms that need to be cleaned to cover half of the total rooms
rooms_to_clean(TotalRooms, RoomsToClean) :-
RoomsToClean is TotalRooms // 2.
% Calculate the total time required to clean the calculated number of rooms
total_time_to_clean(RoomsToClean, CleaningTime) :-
cleaning_time_per_room(TimePerRoom),
CleaningTime is RoomsToClean * TimePerRoom / 60.  % Convert minutes to hours
% Query predicate to find the total time required to clean half of the rooms
query(TotalTime) :-
total_rooms(TotalRooms),
rooms_to_clean(TotalRooms, RoomsToClean),
total_time_to_clean(RoomsToClean, TotalTime).
% Uncomment the line below to run the query
% query(TotalTime).
%query(TotalTime).