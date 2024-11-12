% Define the rule to calculate the number of candy bars bought for Jimmy
candy_bars_bought(TotalMoney, CandyBarCost, CandyBarsBought) :-
RemainingMoney is TotalMoney - 20,  % Calculate the money Marissa had left after buying the ball
CandyBarsBought is RemainingMoney // CandyBarCost.  % Calculate the number of candy bars bought for Jimmy
% Query to find the number of candy bars bought for Jimmy
query_candy_bars_bought(CandyBarsBought) :-
TotalMoney is 80,  % Assumed total money Marissa had
CandyBarCost is 5,  % Assumed cost of each candy bar
candy_bars_bought(TotalMoney, CandyBarCost, CandyBarsBought).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_candy_bars_bought(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).