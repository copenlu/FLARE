% Define constants
vaccine_cost(20).
heartworm_check_percentage(0.6).
amount_brought(125).
% Calculate the total cost of vaccines
total_vaccine_cost(TotalCost) :-
vaccine_cost(CostPerVaccine),
TotalCost is 2 * CostPerVaccine.
% Calculate the cost of the heartworm check
heartworm_check_cost(TotalCost, Cost) :-
heartworm_check_percentage(Percentage),
Cost is Percentage * TotalCost.
% Calculate the total bill
total_bill(TotalCost, Bill) :-
Bill is TotalCost + TotalCost.
% Calculate the amount John leaves with
amount_left_with(AmountBrought, Bill, AmountLeft) :-
AmountLeft is AmountBrought - Bill.
% Query to find out how much John leaves with
calculate_amount_left_with(AmountLeft) :-
total_vaccine_cost(VaccineCost),
heartworm_check_cost(VaccineCost, HeartwormCost),
total_bill(VaccineCost, TotalCost),
amount_brought(AmountBrought),
amount_left_with(AmountBrought, TotalCost, AmountLeft).
% Uncomment the following line to run the query and calculate the amount John leaves with
% ?- calculate_amount_left_with(AmountLeft).
%query.