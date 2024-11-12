% Define the total number of eggs laid per day
eggs_laid_per_day(16).
% Calculate the number of eggs available for sale
eggs_for_sale(EggsLaid, EggsConsumed, EggsForSale) :-
EggsForSale is EggsLaid - EggsConsumed.
% Calculate the daily earnings at the farmers' market
daily_earnings(EggsForSale, PricePerEgg, DailyEarnings) :-
DailyEarnings is EggsForSale * PricePerEgg.
% Predicate to encapsulate the entire calculation and output Janet's daily earnings
calculate_daily_earnings(DailyEarnings) :-
eggs_laid_per_day(16),  % Assumed atom/predicate
eggs_for_sale(16, 3 + 4, EggsForSale),  % Assumed atom/predicate
daily_earnings(EggsForSale, 2, DailyEarnings).  % Assumed atom/predicate
% Query to find Janet's daily earnings
query(DailyEarnings) :-
calculate_daily_earnings(DailyEarnings).
% Uncomment the following line to run the query
% ?- query(DailyEarnings).
%query(DailyEarnings).