% Predicate to calculate the total amount of gas in each container
total_gas_per_container(TotalGas, Containers) :-
TotalGas is 15 / Containers.
% Predicate to calculate the amount of gas needed by Josey
gas_needed(GasPerContainer, Fraction, GasNeeded) :-
GasNeeded is GasPerContainer * Fraction.
% Predicate to convert the gas needed to pints
convert_to_pints(GasNeeded, Pints) :-
Pints is GasNeeded * 8.
% Main predicate to calculate the number of pints of gasoline Josey needs
josey_gas_needed(Pints) :-
total_gas_per_container(TotalGas, 5),
gas_needed(TotalGas, 1/4, GasNeeded),
convert_to_pints(GasNeeded, Pints).
% Query to find out how many pints of gasoline Josey needs
query(Pints) :-
josey_gas_needed(Pints).
% Uncomment the following line to run the query
% ?- query(Pints).
%query(Pints).