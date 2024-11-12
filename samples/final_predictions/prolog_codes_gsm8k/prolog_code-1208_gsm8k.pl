% Define how many teeth the dentist fixes
total_teeth_fixed(DrilledTeeth, CappedTeeth, TotalFixed) :-
TotalFixed is DrilledTeeth + CappedTeeth.
% Define the percentage of teeth fixed by the dentist
percentage_teeth_fixed(TotalFixed, TotalTeeth, Percentage) :-
Percentage is (TotalFixed / TotalTeeth) * 100.
% Main predicate to compute the percentage of teeth fixed by the dentist
calculate_percentage_teeth_fixed(Percentage) :-
% Constants
TotalTeeth = 30,
DrilledTeeth = 4,
CappedTeeth = 4 + 7,  % Capped teeth are 7 more than drilled teeth
% Calculate total teeth fixed
total_teeth_fixed(DrilledTeeth, CappedTeeth, TotalFixed),
% Calculate the percentage of teeth fixed
percentage_teeth_fixed(TotalFixed, TotalTeeth, Percentage).
% Query predicate to get the percentage of teeth fixed by the dentist
query(Percentage) :-
calculate_percentage_teeth_fixed(Percentage).
% Uncomment the following line to run the query
% query(Percentage).
%query(Percentage).