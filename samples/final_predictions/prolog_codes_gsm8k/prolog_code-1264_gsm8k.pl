% Define the rule to calculate the total money received from selling the remaining apples
apples_sold(MoneyReceived) :-
TotalApples = 60,                           % Total number of apples Walter bought
ApplesAte is TotalApples * 2 / 5,           % Calculate the number of apples Walter ate
RemainingApples is TotalApples - ApplesAte, % Calculate the remaining apples
ApplesToSister is RemainingApples * 0.25,   % Calculate the apples given to his sister
ApplesSold is RemainingApples - ApplesToSister, % Calculate the apples sold to his uncle
MoneyReceived is ApplesSold * 3.            % Calculate the total money received
% Query to find out how much money Walter received from selling the remaining apples
query_money_received(MoneyReceived) :-
apples_sold(MoneyReceived).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_money_received(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).