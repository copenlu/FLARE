% Define artworks
artwork('Sandro Botticelli', 'The Birth of Venus', 1486, 'Uffizi Gallery').
% Define public domain rule
public_domain(Artist, Title) :-
artwork(Artist, Title, Year, _),
CurrentYear is 2023, % Assumed atom
(CurrentYear - Year) > 70.
% User query
query_artwork(Title) :-
(   public_domain(_, Title)
->  format('~w is in the public domain. No license is required.\n', [Title])
;   format('Please check the rights for ~w.\n', [Title])).
% Driver predicate for querying
query :- query_artwork('The Birth of Venus').
%query.