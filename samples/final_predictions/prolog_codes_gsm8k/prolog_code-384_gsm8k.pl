% Predicate to calculate the milk production from a group of sheep
milk_production(NumSheep, MilkProduced) :-
MilkProduced is NumSheep / 2.
% Predicate to calculate the total milk collected every day
total_milk_collected(TotalMilk) :-
milk_production(15, Milk1),  % 1 kg of milk from half of the sheep
milk_production(15, Milk2),  % 2 kg of milk from the other half of the sheep
TotalMilk is Milk1 + 2 * Milk2.  % Total milk collected every day
% Query to find the total milk collected every day
query(TotalMilk) :-
total_milk_collected(TotalMilk).
% Uncomment the following line to run the query
% ?- query(TotalMilk).
%query(TotalMilk).