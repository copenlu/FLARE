% Define constants for jewel values
sapphire_value(800).
ruby_value(1200).
% Calculate the total value of Jenna's sapphires
total_sapphire_value(NumSapphires, TotalValue) :-
sapphire_value(SapphireValue),
TotalValue is NumSapphires * SapphireValue.
% Calculate the value of rubies obtained through the trade
ruby_value_from_trade(NumSapphiresTraded, NumRubiesObtained, TotalValue) :-
sapphire_value(SapphireValue),
ruby_value(RubyValue),
TotalValue is (NumRubiesObtained * RubyValue) - (NumSapphiresTraded * SapphireValue).
% Calculate the total value of all Jenna's jewels
total_jewels_value(NumSapphires, NumSapphiresTraded, NumRubiesObtained, TotalValue) :-
total_sapphire_value(NumSapphires, SapphireValue),
ruby_value_from_trade(NumSapphiresTraded, NumRubiesObtained, RubyValue),
TotalValue is SapphireValue + RubyValue.
% Query to calculate the total value of all Jenna's jewels
query(TotalValue) :-
total_jewels_value(8, 3, 2, TotalValue).
% Uncomment the following line to run the query and calculate the total value of Jenna's jewels
% ?- query(TotalValue).
%query(TotalValue).