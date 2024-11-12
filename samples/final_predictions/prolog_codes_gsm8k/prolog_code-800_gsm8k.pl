% Define points earned for each action
points(enemy_jump, 10).
points(berry_collect, 5).
points(time_remaining, 30).
% Calculate total points earned by a player
total_points(EnemiesJumped, BerriesCollected, TimeRemaining, TotalPoints) :-
points(enemy_jump, EnemyPoints),
points(berry_collect, BerryPoints),
points(time_remaining, TimePoints),
TotalPoints is (EnemiesJumped * EnemyPoints) + (BerriesCollected * BerryPoints) + (TimeRemaining * TimePoints).
% Calculate the difference in scores between Ava and Emma
calculate_score_difference(AvaEnemies, EmmaEnemies, AvaBerries, EmmaBerries, AvaTime, EmmaTime, ScoreDifference) :-
total_points(AvaEnemies, AvaBerries, AvaTime, AvaScore),
total_points(EmmaEnemies, EmmaBerries, EmmaTime, EmmaScore),
ScoreDifference is abs(AvaScore - EmmaScore).
% Query to calculate the difference in scores between Ava and Emma
query(ScoreDifference) :-
calculate_score_difference(EmmaEnemies, AvaEnemies, EmmaBerries, AvaBerries, EmmaTime, AvaTime, ScoreDifference).
% Uncomment the following line to run the query and calculate the score difference
% ?- query(ScoreDifference).
%query(ScoreDifference).