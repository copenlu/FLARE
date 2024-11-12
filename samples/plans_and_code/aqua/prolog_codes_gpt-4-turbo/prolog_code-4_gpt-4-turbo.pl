% Define constants
production_cost_per_unit(110).
units_per_month(420).
desired_yearly_profit(626400).
% Calculate yearly production cost
yearly_production_cost(YPC) :-
production_cost_per_unit(Cost),
units_per_month(Units),
YPC is Cost * Units * 12.
% Calculate required yearly revenue
required_yearly_revenue(RYR) :-
yearly_production_cost(YPC),
desired_yearly_profit(Profit),
RYR is YPC + Profit.
% Calculate minimum selling price
minimum_selling_price(MSP) :-
required_yearly_revenue(RYR),
units_per_month(Units),
MSP is ceil(RYR / (Units * 12)).
% Verify minimum selling price
verify_selling_price(Price, Valid) :-
minimum_selling_price(MSP),
( Price >= MSP -> Valid = true ; Valid = false ).
% Find minimum valid selling price
find_minimum_price(Price) :-
minimum_selling_price(MSP),
between(MSP, 1000, Price),  % Assuming a reasonable upper limit for search
verify_selling_price(Price, true).
% Query to find the correct numerical answer
query(Answer) :-
find_minimum_price(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).