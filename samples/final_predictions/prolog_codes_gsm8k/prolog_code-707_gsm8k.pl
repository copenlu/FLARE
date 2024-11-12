% Define monthly savings for Rong and Neil
monthly_savings(rong, 20).
monthly_savings(neil, 28).
% Calculate total coins saved after ten years
total_coins_saved(Person, TotalCoins) :-
monthly_savings(Person, MonthlySavings),
TotalCoins is MonthlySavings * 120. % 10 years = 120 months
% Calculate total coins saved by Rong and Neil after ten years
total_coins_saved(rong, RongTotal),
total_coins_saved(neil, NeilTotal).
% Query to calculate the total coins saved by Rong and Neil after ten years
query(RongTotal, NeilTotal) :-
total_coins_saved(rong, RongTotal),
total_coins_saved(neil, NeilTotal).
% Uncomment the following line to run the query and calculate the total coins saved by Rong and Neil after ten years
% ?- query(RongTotal, NeilTotal).
%query(RongTotal, NeilTotal).