% Define the number of goals scored by Team B in the first half
goals_first_half_teamB(GoalsA, GoalsB) :-
GoalsB is GoalsA - 2.
% Define the number of goals scored by Team B in the second half
goals_second_half_teamB(GoalsBFirstHalf, GoalsBSecondHalf) :-
GoalsBSecondHalf is 4 * GoalsBFirstHalf.
% Define the total number of goals scored by Team B in the match
total_goals_teamB(GoalsBFirstHalf, GoalsBSecondHalf, TotalGoalsB) :-
TotalGoalsB is GoalsBFirstHalf + GoalsBSecondHalf.
% Define the total number of goals scored by Team A in the match
total_goals_teamA(GoalsBSecondHalf, TotalGoalsA) :-
TotalGoalsA is GoalsBSecondHalf / 4.
% Define the total number of goals scored in the match
total_goals_match(TotalGoalsA, TotalGoalsB, TotalGoals) :-
TotalGoals is TotalGoalsA + TotalGoalsB.
% Main predicate to compute the total number of goals scored in the match
calculate_total_goals(TotalGoals) :-
% Assumed values
GoalsA = 4,  % Goals scored by Team A in the first half
goals_first_half_teamB(GoalsA, GoalsB),
goals_second_half_teamB(GoalsB, GoalsBSecondHalf),
total_goals_teamB(GoalsB, GoalsBSecondHalf, TotalGoalsB),
total_goals_teamA(GoalsBSecondHalf, TotalGoalsA),
total_goals_match(TotalGoalsA, TotalGoalsB, TotalGoals).
% Query predicate to get the total number of goals scored in the match
query(TotalGoals) :-
calculate_total_goals(TotalGoals).
% Uncomment the following line to run the query
% query(TotalGoals).
%query(TotalGoals).