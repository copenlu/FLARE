% Define game modes in League of Legends
game_mode(classic).  % Classic 5v5 mode
game_mode(aram).     % All Random All Mid, still requires teams
game_mode(practice). % Practice tool, potentially solo
% Define what it means for a game mode to require a team
requires_team(classic).
requires_team(aram).
% Practice mode does not necessarily require a team
% We assume it can be played solo for the purpose of this query
requires_team(practice) :- false.  % Assumed atom/predicate
% Define solo play possibilities in different game modes
can_play_solo(Mode) :-
game_mode(Mode),
\+ requires_team(Mode).
% Cosmic Girls scenario - checking if they can play alone based on game mode
cosmic_girls_can_play_alone :-
can_play_solo(practice).
% Query to check if Cosmic Girls can play League of Legends alone
query :-
cosmic_girls_can_play_alone.
% Uncomment the following line to run the query in a Prolog environment
 :- query.
%query.