% Define the initial charge of the power bank
initial_charge(X) :-
charging_rate(9, 5, X, Y),  % Charging friends' phones for 5 hours
discharging_rate(7, 3, Y, 28).  % Discharging at a different rate for 3 hours
% Calculate charge after charging friends' phones
charging_rate(_, 0, X, X).
charging_rate(Rate, Hours, X, Y) :-
Hours > 0,
NewX is X - (Rate * X / 100),
NewHours is Hours - 1,
charging_rate(Rate, NewHours, NewX, Y).
% Calculate charge after changing discharging rate
discharging_rate(_, 0, X, X).
discharging_rate(Rate, Hours, X, Y) :-
Hours > 0,
NewX is X - (Rate * X / 100),
NewHours is Hours - 1,
discharging_rate(Rate, NewHours, NewX, Y).
% Query predicate to find the initial charge of the power bank
query(InitialCharge) :-
initial_charge(InitialCharge).
% Uncomment the line below to run the query
% query(InitialCharge).
%query(InitialCharge).