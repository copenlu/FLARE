% Define the cost of the laptop and the reduction in price
laptop_cost(600).
price_reduction(200).
% Define the money sources
savings_in_purse(0).  % Assumed amount of money in Erika's purse
money_from_job(150).
money_from_mom(80).
extra_money_needed(50).
% Calculate the total money received from all sources
total_money_received(TotalMoney) :-
savings_in_purse(Savings),
money_from_job(JobMoney),
money_from_mom(MomMoney),
TotalMoney is Savings + JobMoney + MomMoney.
% Calculate the total money needed to buy the laptop
total_money_needed(TotalNeeded) :-
laptop_cost(LaptopCost),
price_reduction(PriceReduction),
extra_money_needed(ExtraMoney),
TotalNeeded is LaptopCost - PriceReduction - ExtraMoney.
% Calculate the money Erika has in her purse
calculate_purse_money(PurseMoney) :-
total_money_received(TotalReceived),
total_money_needed(TotalNeeded),
PurseMoney is TotalReceived - TotalNeeded.
% Query predicate to find out how much money Erika has in her purse
query(PurseMoney) :-
calculate_purse_money(PurseMoney).
% Uncomment the line below to run the query
% query(PurseMoney).
%query(PurseMoney).