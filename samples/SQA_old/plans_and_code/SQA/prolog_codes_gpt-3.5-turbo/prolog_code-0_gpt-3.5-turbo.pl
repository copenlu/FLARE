% Facts defining by-products of various energy sources
by_product(hydropower, sedimentation).
by_product(wind_energy, none).
by_product(agriculture, chaff).
% Rule to check if an energy source produces a specific by-product
produces_by_product(EnergySource, ByProduct) :-
by_product(EnergySource, ByProduct).
% Sample queries
% ?- produces_by_product(hydropower, chaff).
% ?- produces_by_product(agriculture, chaff).
% Assumed atom/predicate for query
query :- produces_by_product(hydropower, chaff).
%query.