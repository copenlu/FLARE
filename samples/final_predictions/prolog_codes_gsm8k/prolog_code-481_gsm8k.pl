% Calculate total number of cupcakes that can be decorated
calculate_total_cupcakes(NumJars, CupcakesPerJar, TotalCupcakes) :-
TotalCupcakes is NumJars * CupcakesPerJar.
% Calculate number of pans needed to bake the total cupcakes
calculate_pans_needed(TotalCupcakes, CupcakesPerPan, PansNeeded) :-
PansNeeded is ceil(TotalCupcakes / CupcakesPerPan).
% Given values
num_jars_sprinkles(6).
cupcakes_per_jar(8).
cupcakes_per_pan(12).
% Calculate total cupcakes and pans needed
calculate_total_cupcakes(6, 8, TotalCupcakes),
calculate_pans_needed(TotalCupcakes, 12, PansNeeded).
% Query to calculate the number of pans needed to bake all cupcakes
query(PansNeeded) :-
calculate_pans_needed(TotalCupcakes, 12, PansNeeded).
% Uncomment the following line to run the query and calculate the number of pans needed
% ?- query(PansNeeded).
%query(PansNeeded).