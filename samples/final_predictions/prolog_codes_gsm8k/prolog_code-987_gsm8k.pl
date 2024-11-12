% Define the total number of Pokemon caught
total_pokemon(A, S, W) :- A + S + W =:= 339.
% Define the relationship between Alex and Stan
alex_stan(A, S) :- A =:= S + 5.
% Define the relationship between Stan and Adelwolfe
stan_adelwolfe(S, W) :- S =:= 4 * W - 13.
% Define the rule to find the number of Pokemon caught by Stan
pokemon_caught_by_stan(S) :- stan_adelwolfe(S, _), total_pokemon(_, S, _), alex_stan(_, S).
% Predicate to encapsulate the entire calculation and output the number of Pokemon caught by Stan
calculate_stans_pokemon(StanPokemon) :-
pokemon_caught_by_stan(StanPokemon).
% Query to find the number of Pokemon caught by Stan
query(StanPokemon) :-
calculate_stans_pokemon(StanPokemon).
% Uncomment the following line to run the query
% ?- query(StanPokemon).
%query(StanPokemon).