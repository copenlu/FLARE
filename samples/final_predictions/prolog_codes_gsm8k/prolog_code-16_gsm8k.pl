% Define rules to calculate final market value after increase
final_value_jewelry(InitialValue, FinalValue) :-
FinalValue is InitialValue + (InitialValue * 0.025).
final_value_gadgets(InitialValue, FinalValue) :-
FinalValue is InitialValue + (InitialValue * 0.012).
% Define rules to calculate profit
profit_jewelry(InitialValue, Profit) :-
final_value_jewelry(InitialValue, FinalValue),
Profit is FinalValue - InitialValue.
profit_gadgets(InitialValue, Profit) :-
final_value_gadgets(InitialValue, FinalValue),
Profit is FinalValue - InitialValue.
% Compare profits and output the higher profit
maximize_profit(InitialValueJewelry, InitialValueGadgets, MaxProfit) :-
profit_jewelry(InitialValueJewelry, ProfitJewelry),
profit_gadgets(InitialValueGadgets, ProfitGadgets),
MaxProfit is max(ProfitJewelry, ProfitGadgets).
% Predicate to calculate and output the maximum profit
calculate_max_profit(MaxProfit) :-
maximize_profit(5000, 8000, MaxProfit).  % Initial values for jewelry and gadgets
% Query to find the maximum profit
query(MaxProfit) :-
calculate_max_profit(MaxProfit).
% Uncomment the following line to run the query
% ?- query(MaxProfit).
%query(MaxProfit).