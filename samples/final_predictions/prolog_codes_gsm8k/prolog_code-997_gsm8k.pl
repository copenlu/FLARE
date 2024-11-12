% Define the rule to calculate the total number of states in both countries
total_states(StatesUSA, StatesIndia, TotalStates) :-
HalfStatesUSA is StatesUSA / 2,
StatesIndia is HalfStatesUSA + 4,
TotalStates is StatesUSA + StatesIndia.
% Predicate to encapsulate the entire calculation and output the total number of states
calculate_total_states(TotalStates) :-
total_states(50, StatesIndia, TotalStates).  % Assuming 50 states in the USA
% Query to find the total number of states in both countries
query(TotalStates) :-
calculate_total_states(TotalStates).
% Uncomment the following line to run the query
% ?- query(TotalStates).
%query(TotalStates).