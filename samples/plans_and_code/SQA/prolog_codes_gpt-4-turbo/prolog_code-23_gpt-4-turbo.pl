% Define materials derived from oysters
material(mother_of_pearl).
material(pearl).
% Properties of materials
material_property(mother_of_pearl, durable).
material_property(mother_of_pearl, aesthetic).
material_property(pearl, aesthetic).
% Uses of materials in craftsmanship
used_in(mother_of_pearl, musical_instruments).
used_in(pearl, jewelry).
% Specific application in guitars
guitar_part(fingerboard).
guitar_part(headstock).
guitar_part(body).
% Inlay materials for guitars
inlay_material(mother_of_pearl).
% Historical and current use of mother-of-pearl in guitars
historical_use(mother_of_pearl, inlays).
current_use(mother_of_pearl, inlays).
% Availability and sustainability of materials
availability(mother_of_pearl, moderate). % Assumed availability
sustainability_issue(mother_of_pearl, overharvesting). % Assumed sustainability issue
% Alternatives to natural mother-of-pearl
alternative_material(synthetic_mother_of_pearl). % Assumed available alternative
% Techniques in guitar manufacturing
manufacturing_technique(inlay, skilled).
% Market preferences
market_preference(natural_materials, high).
% Determine if a material is suitable for guitar manufacturing based on various factors
suitable_for_guitar(Material) :-
material(Material),
material_property(Material, durable),
material_property(Material, aesthetic),
used_in(Material, musical_instruments),
availability(Material, moderate),
not(sustainability_issue(Material, overharvesting)).
% Check if any material is suitable for guitar manufacturing
any_suitable_material_for_guitar :-
suitable_for_guitar(Material),
writeln(Material).
% Query to run the program
query :-
any_suitable_material_for_guitar.
 :- query.
%query.