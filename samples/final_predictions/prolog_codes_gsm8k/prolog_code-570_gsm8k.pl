% Define the price of the foot-long fish sub
price_footlong_fish_sub(40).  % Assumed price of the foot-long fish sub
% Define the price of the six-inch cold-cut combo sub
price_six_inch_cold_cut_combo_sub(120).  % Assumed price of the six-inch cold-cut combo sub
% Define the predicate to calculate the total cost of lunch at Subway
total_cost(TotalCost) :-
price_footlong_fish_sub(PriceFootlongFish),
price_six_inch_cold_cut_combo_sub(PriceColdCutCombo),
TotalCost is PriceFootlongFish + PriceColdCutCombo.
% Query predicate to find the total cost of lunch at Subway
query(TotalCost) :-
total_cost(TotalCost).
% Uncomment the line below to run the query
% ?- query(TotalCost).
%query(TotalCost).