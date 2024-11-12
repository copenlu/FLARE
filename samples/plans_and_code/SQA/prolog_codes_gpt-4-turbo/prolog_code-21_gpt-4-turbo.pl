% Define game console properties
console_properties(nes, cartridges, mid_1980s).
console_properties(ps3, blu_ray_discs, early_2000s).
% Define media properties
media_properties(cartridges, low_capacity, high_load_time).
media_properties(blu_ray_discs, high_capacity, low_load_time).
% Define game format implications on game development
game_development_impact(low_capacity, limited_game_size).
game_development_impact(high_capacity, extensive_game_size).
% Define game size implications on game complexity
game_complexity(limited_game_size, simple).
game_complexity(extensive_game_size, complex).
% Check if two consoles use the same game format
same_game_format(Console1, Console2) :-
console_properties(Console1, Format1, _),
console_properties(Console2, Format2, _),
Format1 == Format2.
% Check media properties
media_comparison(Console, Capacity, LoadTime) :-
console_properties(Console, Media, _),
media_properties(Media, Capacity, LoadTime).
% Analyze game development based on capacity
game_development_analysis(Console, GameComplexity) :-
media_comparison(Console, Capacity, _),
game_development_impact(Capacity, GameSize),
game_complexity(GameSize, GameComplexity).
% Query to compare NES and PS3 game formats
query :-
\+ same_game_format(nes, ps3).
% The query predicate should be uncommented to run the program.
% query.
% query.