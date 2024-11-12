% Define the predicate to calculate the time required to charge the remaining percentage points
time_to_charge(CurrentCharge, RemainingCharge, TimeInMinutes) :-
RemainingCharge is 100 - CurrentCharge,
TimeInMinutes is RemainingCharge * 3.
% Define the predicate to convert time in minutes to hours
convert_minutes_to_hours(TimeInMinutes, TimeInHours) :-
TimeInHours is TimeInMinutes / 60.
% Define the predicate to calculate the time required to fully charge the phone in hours
fully_charge_phone(CurrentCharge, TimeInHours) :-
time_to_charge(CurrentCharge, _, TimeInMinutes),
convert_minutes_to_hours(TimeInMinutes, TimeInHours).
% Query predicate to run the program and get the result
query(TimeInHours) :-
fully_charge_phone(60, TimeInHours).
% Uncomment the following line to run the query
% ?- query(TimeInHours).
%query(TimeInHours).