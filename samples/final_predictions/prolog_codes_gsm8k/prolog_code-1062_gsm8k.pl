% Define a predicate to calculate the total number of packs
% Params: NumberApplesInBox, NumberBoxesOrdered, NumberApplesInPack, TotalPacks
total_packs(NumberApplesInBox, NumberBoxesOrdered, NumberApplesInPack, TotalPacks) :-
TotalApples is NumberApplesInBox * NumberBoxesOrdered,  % Calculate total number of apples
TotalPacks is TotalApples // NumberApplesInPack.        % Calculate total number of packs
% Main predicate to compute the total number of packs of apples Uncle Franky can make
% Params: TotalPacks
calculate_total_packs(TotalPacks) :-
% Constants
NumberApplesInBox = 40,
NumberBoxesOrdered = 2,
NumberApplesInPack = 8,
% Calculate total packs
total_packs(NumberApplesInBox, NumberBoxesOrdered, NumberApplesInPack, TotalPacks).
% Query predicate to get the total number of packs
query(TotalPacks) :-
calculate_total_packs(TotalPacks).
% Uncomment the following line to run the query
% query(TotalPacks).
%query(TotalPacks).