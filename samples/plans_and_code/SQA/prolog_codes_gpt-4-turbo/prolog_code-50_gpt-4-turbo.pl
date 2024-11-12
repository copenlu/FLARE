% Define historical events with their date ranges
event(battle_of_baghdad, date(2003, 4, 3), date(2003, 4, 12)).
event(release_believe_album, date(2012, 6, 19), date(2012, 6, 19)).
% Check if a date is between two other dates
date_in_range(Date, StartDate, EndDate) :-
Date @>= StartDate,
Date @=< EndDate.
% Check if an event occurred during another event
event_during(Event1, Event2) :-
event(Event1, StartDate1, EndDate1),
event(Event2, StartDate2, EndDate2),
date_in_range(StartDate1, StartDate2, EndDate2),
date_in_range(EndDate1, StartDate2, EndDate2).
% Logical reasoning to determine if soldiers could listen to the album during the battle
soldiers_listened_to_album_during_battle(Battle, Album) :-
not(event_during(release_believe_album, Battle)). % Asserting that the album release was not during the battle
% Query to determine if soldiers listened to Justin Bieber's "Believe" during the Battle of Baghdad
query :-
not(soldiers_listened_to_album_during_battle(battle_of_baghdad, release_believe_album)).
% Uncomment the line below to run the query
 :- query.
%query.