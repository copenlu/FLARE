% Define the rule to calculate the amount of allowance each girl received
allowance(JuliaAllowance, NadineAllowance) :-
TotalCost is 11 + (12 * 0.5) + (2 * 7),  % Calculate the total cost of items purchased
CombinedAllowance is TotalCost,           % Assume the combined allowance equals the total cost
RemainingAmount is CombinedAllowance,     % Calculate the remaining amount after purchases
JuliaAllowance is RemainingAmount / 2,    % Calculate Julia's allowance
NadineAllowance is RemainingAmount / 2.   % Calculate Nadine's allowance
% Query to find the amount of allowance each girl received
query(JuliaAllowance, NadineAllowance) :-
allowance(JuliaAllowance, NadineAllowance).
% Uncomment the following line to run the query
% ?- query(JuliaAllowance, NadineAllowance).
%query(JuliaAllowance, NadineAllowance).