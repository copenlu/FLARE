% Define the rule to calculate the total charge
total_charge(LaborHours, PartsCost, TotalCharge) :-
FixedFee = 40,              % Assumed fixed visiting fee
HourlyRate = 35,            % Assumed hourly labor rate
LaborCost is LaborHours * HourlyRate,
TotalCharge is FixedFee + LaborCost + PartsCost.
% Query to find the total charge for the job that took 2.25 hours and used $60 in parts
query_total_charge(TotalCharge) :-
total_charge(2.25, 60, TotalCharge).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_charge(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).