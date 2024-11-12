% Define total revenue generated by the hospital per day
total_revenue_per_day(PatientsSeen, ChargePerHour, Revenue) :-
Revenue is PatientsSeen * (ChargePerHour / 60) * 24.
% Define total cost incurred by the hospital for doctor services per day
total_cost_per_day(PatientsSeen, AverageTimePerPatient, DoctorChargePerHour, Cost) :-
Cost is PatientsSeen * (DoctorChargePerHour / 60) * AverageTimePerPatient.
% Define hospital's profit per day
hospital_profit(Revenue, Cost, Profit) :-
Profit is Revenue - Cost.
% Calculate and return the profit made by the hospital from patient visits
query(Profit) :-
total_revenue_per_day(500, 200, Revenue),  % 500 patients seen per day, $200 per hour hospital charge
total_cost_per_day(500, 24, 150, Cost),     % 24 minutes per patient, $150 per hour doctor charge
hospital_profit(Revenue, Cost, Profit).
% Uncomment the following line to run the query and find out the profit made by the hospital
% ?- query(Profit).
%query(Profit).