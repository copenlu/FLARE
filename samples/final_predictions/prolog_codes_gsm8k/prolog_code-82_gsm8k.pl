% Define the rule to calculate the water left after distributions
water_left_after_distribution(TotalWater, GirlsShare, BoyShare, WaterLeft) :-
TotalWater = 24,                            % Total amount of water initially available
GirlsShare is TotalWater * (1/6),            % Calculate the share of water each girl received
TotalGirlsShare is GirlsShare * 2,           % Calculate the total amount received by both girls
WaterLeftAfterGirls is TotalWater - TotalGirlsShare,  % Calculate the water left after girls' share
WaterLeft is WaterLeftAfterGirls - BoyShare. % Calculate the final amount of water left after boy's share
% Query to find the amount of water left
query_water_left(WaterLeft) :-
water_left_after_distribution(24, GirlsShare, 6, WaterLeft).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_water_left(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).