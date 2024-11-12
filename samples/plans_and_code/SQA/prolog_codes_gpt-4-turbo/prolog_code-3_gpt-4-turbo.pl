% Define Sam Harris's background and beliefs
person(sam_harris).
profession(sam_harris, philosopher).
profession(sam_harris, neuroscientist).
associated_with(sam_harris, new_atheism).
% Define his views on religion
believes_in(sam_harris, science).
believes_in(sam_harris, secularism).
critiques(sam_harris, organized_religion).
% Specific views or mentions of Hinduism or Shiva
mentions_religion(sam_harris, hinduism, no).  % Assumed atom/predicate
mentions_deity(sam_harris, shiva, no).        % Assumed atom/predicate
% Define what constitutes worship
worship_style(sam_harris, meditation).
worship_deity(sam_harris, none).
% Determine if meditation equates to worship of a deity
equates_meditation_to_worship(sam_harris, no).  % Assumed atom/predicate
% Logic to determine if Sam Harris worships Shiva
worships_shiva(Person) :-
person(Person),
profession(Person, philosopher),
associated_with(Person, new_atheism),
critiques(Person, organized_religion),
mentions_deity(Person, shiva, no),
worship_deity(Person, none).
% Query to check if Sam Harris worships Shiva
query :-
worships_shiva(sam_harris),
!.
% Uncomment the line below to run the query
 :- query.
%query.