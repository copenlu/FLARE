% Rule to calculate Samantha's money based on Carmen's money
% Params: CarmenMoney, SamanthaMoney
samantha_money(CarmenMoney, SamanthaMoney) :-
SamanthaMoney is CarmenMoney + 25.
% Rule to calculate Daisy's money based on Samantha's money
% Params: SamanthaMoney, DaisyMoney
daisy_money(SamanthaMoney, DaisyMoney) :-
DaisyMoney is SamanthaMoney + 50.
% Rule to calculate the total money all three girls have combined
% Params: CarmenMoney, SamanthaMoney, DaisyMoney, Total
total_money(CarmenMoney, SamanthaMoney, DaisyMoney, Total) :-
Total is CarmenMoney + SamanthaMoney + DaisyMoney.
% Main predicate to compute the total money all three girls have combined
% Params: Total
calculate_total_money(Total) :-
% Constants
CarmenMoney = 100,  % Carmen has $100
samantha_money(CarmenMoney, SamanthaMoney),
daisy_money(SamanthaMoney, DaisyMoney),
total_money(CarmenMoney, SamanthaMoney, DaisyMoney, Total).
% Query predicate to get the total money all three girls have combined
query(Total) :-
calculate_total_money(Total).
% Uncomment the following line to run the query
% query(Total).
%query(Total).