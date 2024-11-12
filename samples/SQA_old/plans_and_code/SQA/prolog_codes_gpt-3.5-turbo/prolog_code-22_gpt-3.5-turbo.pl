% Define characters and their team affiliations during Civil War
team(spiderman, ironman).
team(falcon, captainamerica).
% Define conflict events and involved teams
conflict(civil_war, [team_ironman, team_captainamerica]).
team_member(team_ironman, ironman).
team_member(team_ironman, spiderman).
team_member(team_captainamerica, captainamerica).
team_member(team_captainamerica, falcon).
% Define opposing sides relationship
opposing_sides(X, Y, Event) :-
conflict(Event, Teams),
member(TeamX, Teams), team_member(TeamX, X),
member(TeamY, Teams), team_member(TeamY, Y),
TeamX \= TeamY.
% Check if two characters fought against each other
fought_against(X, Y) :-
opposing_sides(X, Y, Event).
% Assumed atom/predicate
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).
% Query predicate
query :- fought_against(spiderman, falcon).
%query.