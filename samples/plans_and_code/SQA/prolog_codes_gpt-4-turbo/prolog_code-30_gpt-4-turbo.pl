% Define characteristics of the 2020 Toyota Supra
car_spec(supra2020, power(335), torque(365), weight(3397), type(road)).
% Define typical NASCAR vehicle specifications
car_spec(nascar, power(750), torque(500), weight(3200), type(racing)).
% NASCAR regulations (simplified)
nascar_regulations(engine_power_min(650), weight_min(3200), type_required(racing)).
% Check if a car meets NASCAR regulations
meets_nascar_requirements(Car) :-
car_spec(Car, power(Power), torque(_), weight(Weight), type(Type)),
nascar_regulations(engine_power_min(MinPower), weight_min(MinWeight), type_required(ReqType)),
Power >= MinPower,
Weight >= MinWeight,
Type == ReqType.
% Modifications needed for Supra to meet NASCAR standards
required_modifications(supra2020, [increase_power, reduce_weight, change_type_to_racing]).
% Feasibility of modifications
modification_feasibility(increase_power, feasible).
modification_feasibility(reduce_weight, feasible).
modification_feasibility(change_type_to_racing, infeasible). % Assumed predicate
% Evaluate if modifications are feasible for a car to compete in NASCAR
can_be_modified_for_nascar(Car) :-
required_modifications(Car, Mods),
maplist(modification_feasibility, Mods, Feasibilities),
\+ member(infeasible, Feasibilities).
% Determine if a car can compete in NASCAR either directly or through modifications
can_compete_in_nascar(Car) :-
(meets_nascar_requirements(Car) ; can_be_modified_for_nascar(Car)).
% Query to determine if the 2020 Toyota Supra can compete in NASCAR
query :-
can_compete_in_nascar(supra2020).
% Uncomment the line below to run the query
 :- query.
%query.