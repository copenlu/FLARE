% Define the rule to calculate the total amount of meat consumed by the team
meat_consumed_by_team(TotalOunces) :-
Player1Steak = 6,          % Assumed atom/predicate: Player 1 ate a 6-ounce steak
Player2BeefTips = 8,       % Assumed atom/predicate: Player 2 ate 8 beef tips
Player3Steak = 16,         % Assumed atom/predicate: Player 3 ate a 1-pound steak (16 ounces)
TotalOunces is Player1Steak + (Player2BeefTips * 1) + Player3Steak.
% Query to find the total amount of meat consumed by the team
query(TotalOunces) :-
meat_consumed_by_team(TotalOunces).
% Uncomment the following line to run the query
% ?- query(TotalOunces).
%query(TotalOunces).