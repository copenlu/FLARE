% Define a rule to find the number of wins and losses
find_wins_and_losses(Wins, Losses) :-
Wins is Losses + 8,  % The team won 8 more games than they lost
Wins + Losses =:= 22.  % Total games played is 22
% Query to find the number of games won and lost
query(Wins, Losses) :-
find_wins_and_losses(Wins, Losses).
% Uncomment the following line to run the query and find the number of games won
% ?- query(Wins, Losses).
%query(Wins, Losses).