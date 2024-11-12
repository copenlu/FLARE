% Define the number of unicorns in the Scottish Highlands
scottish_unicorns(TotalUnicorns, ScottishUnicorns) :-
ScottishUnicorns is TotalUnicorns // 3.
% Define the number of female Scottish unicorns
female_scottish_unicorns(TotalUnicorns, FemaleScottishUnicorns) :-
scottish_unicorns(TotalUnicorns, ScottishUnicorns),
FemaleScottishUnicorns is (2 * ScottishUnicorns) // 3.
% Query to find the number of female Scottish unicorns
query(FemaleScottishUnicorns) :-
female_scottish_unicorns(27, FemaleScottishUnicorns).
% Uncomment the following line to run the query and find out the number of female Scottish unicorns
% ?- query(FemaleScottishUnicorns).
%query(FemaleScottishUnicorns).