% Define the total amount
total_amount(1200).
% Calculate Skyler's investment
calculate_skyler_investment(SkylerInvestment) :-
total_amount(Total),
DylanInvestment is (2/5) * Total,
RemainingAmount is Total - DylanInvestment,
FrancesInvestment is (2/3) * RemainingAmount,
SkylerInvestment is RemainingAmount - FrancesInvestment.
% Query to calculate Skyler's investment
query(SkylerInvestment) :-
calculate_skyler_investment(SkylerInvestment).
% Uncomment the following line to run the query and calculate Skyler's investment
% ?- query(SkylerInvestment).
%query(SkylerInvestment).