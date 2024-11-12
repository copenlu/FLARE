% Define the basic facts about Augustus
birth_name(augustus, gaius_octavius_thurinus).
adopted_name(augustus, gaius_julius_caesar_octavianus).
title(augustus, augustus).
% Define Roman naming conventions
roman_naming_convention(praenomen).
roman_naming_convention(nomen).
roman_naming_convention(cognomen).
% Define the title and its significance
title_significance(augustus, 'The illustrious one').
% Historical context of the title "Augustus"
title_given_by(augustus, senate).
title_year(augustus, 27).
% Role of titles in Rome
role_of_titles(rome, honor).
role_of_titles(rome, authority).
% Check if a name is a birth name
is_birth_name(Person, Name) :-
birth_name(Person, Name).
% Check if a name is an adopted name
is_adopted_name(Person, Name) :-
adopted_name(Person, Name).
% Check if a name is a title
is_title(Person, Name) :-
title(Person, Name).
% Determine if 'Augustus' was his real name
is_real_name(Person, Name) :-
is_birth_name(Person, Name);
is_adopted_name(Person, Name).
% Check if 'Augustus' is a title and not a real name
is_title_not_real_name(Person, Name) :-
is_title(Person, Name),
\+ is_real_name(Person, Name).
% Main query to determine if 'Augustus' was a real name or a title
query :-
is_title_not_real_name(augustus, augustus).
% Uncomment the line below to run the query.
 :- query.
%query.