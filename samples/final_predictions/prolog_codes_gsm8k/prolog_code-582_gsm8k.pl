% Define the number of goals scored by Richie (assumed known)
richie_goals(80).  % Assumed number of goals scored by Richie
% Define the number of goals scored by Mark based on the relationship with Richie
mark_goals(MarkGoals) :-
richie_goals(Richie),
MarkGoals is Richie - 20.
% Define the number of goals scored by Anna based on the relationship with Richie
anna_goals(AnnaGoals) :-
richie_goals(Richie),
AnnaGoals is Richie - 45.
% Define the total number of goals scored by all three teenagers
total_goals(TotalGoals) :-
richie_goals(Richie),
mark_goals(Mark),
anna_goals(Anna),
TotalGoals is Richie + Mark + Anna.
% Query predicate to run the program and get the result
query(TotalGoals) :-
total_goals(TotalGoals).
% Uncomment the following line to run the query
% ?- query(TotalGoals).
%query(TotalGoals).