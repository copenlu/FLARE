% Define historical figures in the ice trade
historical_figure(frederic_tudor).
% Define the economic sectors influenced by the ice trade
economic_sector(food_preservation).
economic_sector(medicine).
economic_sector(domestic_use).
economic_sector(hospitality).
economic_sector(entertainment).
% Define the impact of ice on these sectors
sector_impact(food_preservation, high).
sector_impact(medicine, medium).
sector_impact(domestic_use, high).
sector_impact(hospitality, high).
sector_impact(entertainment, medium).
% Define the decline of the ice trade due to technological advancements
technological_advancement(electrical_refrigeration).
% Define the relationship between figures and their wealth due to the ice trade
wealth_impact(frederic_tudor, high).
% Define the general profitability of the ice trade
ice_trade_profitability(high).
% Define the economic contribution of ice to various sectors
economic_contribution(Sector, Impact) :-
economic_sector(Sector),
sector_impact(Sector, Impact).
% Determine if the ice trade made people rich based on the profitability and key figures
ice_trade_made_people_rich :-
ice_trade_profitability(high),
historical_figure(Person),
wealth_impact(Person, high).
% Query to determine if the ice trade made people rich
query :-
ice_trade_made_people_rich.
% Uncomment the following line to run the query
 :- query.
%query.