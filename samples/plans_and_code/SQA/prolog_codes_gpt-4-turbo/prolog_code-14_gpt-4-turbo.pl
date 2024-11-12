% Define basic facts about Julio Gonzalez and his use of acetylene
artist(julio_gonzalez).
innovated_with_acetylene_torch(julio_gonzalez). % Assumed predicate based on historical analysis
% Define what acetylene is and its uses
material(acetylene).
use(acetylene, metal_cutting).
use(acetylene, metal_welding).
% Define Julio Gonzalez's techniques
technique(julio_gonzalez, acetylene_torch_welding). % Assumed predicate based on his known use of the torch
% Define how the torch impacted his sculpture
impact(acetylene_torch_welding, revolutionized_sculpture).
% Check if Gonzalez liked acetylene based on his use and impact
likes_acetylene(Artist) :-
artist(Artist),
innovated_with_acetylene_torch(Artist),
technique(Artist, acetylene_torch_welding),
impact(acetylene_torch_welding, revolutionized_sculpture).
% Query to determine if Julio Gonzalez liked acetylene
query :-
likes_acetylene(julio_gonzalez).
% Uncomment the line below to run the query
 :- query.
%query.