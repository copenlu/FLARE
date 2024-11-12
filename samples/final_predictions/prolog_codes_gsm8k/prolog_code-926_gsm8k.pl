% Define the rule to calculate the material needed for one small mask
material_for_small_mask(Material) :-
Material is 2 / 4.  % Assumed material needed for 4 small masks is 2 yards
% Define the rule to calculate the material needed for one large mask
material_for_large_mask(Material) :-
Material is 2.25 / 3.  % Assumed material needed for 3 large masks is 2.25 yards
% Define the rule to calculate the total material needed for 20 small masks and 8 large masks
total_material_needed(TotalMaterial) :-
material_for_small_mask(MaterialSmall),
material_for_large_mask(MaterialLarge),
TotalMaterial is (MaterialSmall * 20) + (MaterialLarge * 8).
% Query to find the total material needed for making 20 small masks and 8 large masks
query(TotalMaterial) :-
total_material_needed(TotalMaterial).
% Uncomment the following line to run the query
% ?- query(TotalMaterial).
%query(TotalMaterial).