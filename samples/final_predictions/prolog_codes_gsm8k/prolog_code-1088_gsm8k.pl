% Define the cost components
cast_cost(200).
doctor_visit_fee_per_hour(300).
painkiller_cost_per_pill(4).
num_painkillers(30).
parking_cost_per_hour(6).
min_parking_hours(2).
visit_duration_minutes(30).
% Predicate to convert minutes to hours
minutes_to_hours(Minutes, Hours) :-
Hours is Minutes / 60.
% Predicate to calculate the total cost of the doctor's visit
% Params: TotalCost
total_doctor_visit_cost(TotalCost) :-
% Get the cost components
cast_cost(CastCost),
doctor_visit_fee_per_hour(DoctorFeePerHour),
painkiller_cost_per_pill(PainkillerCost),
num_painkillers(NumPainkillers),
parking_cost_per_hour(ParkingCost),
min_parking_hours(MinParkingHours),
visit_duration_minutes(VisitDurationMinutes),
% Calculate the total cost
minutes_to_hours(VisitDurationMinutes, VisitDurationHours),
DoctorVisitFee is DoctorFeePerHour * VisitDurationHours,
PainkillersCost is PainkillerCost * NumPainkillers,
ParkingCost is ParkingCost * MinParkingHours,
% Sum up all costs
TotalCost is CastCost + DoctorVisitFee + PainkillersCost + ParkingCost.
% Query predicate to get the total cost of the doctor's visit
query(TotalCost) :-
total_doctor_visit_cost(TotalCost).
% Uncomment the following line to run the query
% query(TotalCost).
%query(TotalCost).