% Assumed atom/predicate
average_rbc(5_000_000).
average_wbc(8_000).
% Define rules
rbc_outnumber_wbc :-
average_rbc(RBC),
average_wbc(WBC),
RBC > WBC.
% User Interaction and Query Execution
check_rbc_outnumber :-
rbc_outnumber_wbc.
% Implementing Search and Scenario Simulation
simulate_scenario(RBC_factor, WBC_factor) :-
average_rbc(OriginalRBC),
average_wbc(OriginalWBC),
RBC is OriginalRBC * RBC_factor,
WBC is OriginalWBC * WBC_factor,
(RBC > WBC -> true; false).
% Query Predicate
query :- check_rbc_outnumber, simulate_scenario(1.2, 0.8).
%query.