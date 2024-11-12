% Predicate to calculate the value of faulty equipment
faulty_equipment_value(TotalValue, FaultyValue) :-
FaultyValue is 0.4 * TotalValue.
% Predicate to calculate the value of functioning equipment
functioning_equipment_value(TotalValue, FaultyValue, FunctioningValue) :-
faulty_equipment_value(TotalValue, FaultyValue),
FunctioningValue is TotalValue - FaultyValue.
% Main predicate to calculate the total amount spent on functioning equipment
total_functioning_value(FunctioningValue) :-
TotalValue = 400000,  % Assumed atom/predicate: Total purchase amount is $400,000
functioning_equipment_value(TotalValue, FaultyValue, FunctioningValue).
% Query predicate to find the total amount spent on functioning equipment
query(FunctioningValue) :-
total_functioning_value(FunctioningValue).
% Uncomment the following line to run the query
% ?- query(FunctioningValue).
%query(FunctioningValue).