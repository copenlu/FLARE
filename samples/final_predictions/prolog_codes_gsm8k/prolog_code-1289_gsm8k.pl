% Define the rule to calculate the total cost of the phone plan
phone_plan_cost(MainPhoneCost, TotalCost) :-
AdditionalPhoneCost is MainPhoneCost / 2,      % Calculate the cost of each additional phone
TotalAdditionalCost is AdditionalPhoneCost * 4, % Calculate the total cost of the additional phones
TotalCost is MainPhoneCost + TotalAdditionalCost. % Calculate the total cost of the phone plan
% Query to find the total cost of the phone plan when the main phone costs $20
query_phone_plan_cost(TotalCost) :-
phone_plan_cost(20, TotalCost).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_phone_plan_cost(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).