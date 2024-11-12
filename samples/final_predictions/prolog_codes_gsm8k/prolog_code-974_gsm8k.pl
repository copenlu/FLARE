% Define the rule to check if the total points add up to 45
points_scored(Bahati, Azibo, Dinar) :-
Total is Bahati + Azibo + Dinar,
Total =:= 45.
% Define the relationships between the points scored by each player
bahati_points(Bahati, Azibo) :-
Bahati is Azibo + 20.
bahati_points(Bahati, Dinar) :-
Bahati is Dinar + 10.
% Define a rule to find out how many points Azibo scored
azibo_points(Azibo) :-
bahati_points(Bahati, Azibo),
points_scored(Bahati, Azibo, Dinar).
% Predicate to encapsulate the entire calculation and output the points scored by Azibo
calculate_azibo_points(Azibo) :-
azibo_points(Azibo).
% Query to find out how many points Azibo scored
query(Azibo) :-
calculate_azibo_points(Azibo).
% Uncomment the following line to run the query
% ?- query(Azibo).
%query(Azibo).