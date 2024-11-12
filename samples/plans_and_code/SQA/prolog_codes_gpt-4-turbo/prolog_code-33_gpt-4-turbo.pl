% Define key works and their characteristics
book('The Cat in the Hat').
book('Green Eggs and Ham').
writing_style('imaginative characters').
writing_style('rhymes').
writing_style('anapestic meter').
% Define Dr. Seuss's marketing and publication strategies
marketing_strategy('active promotion'). % Assumed atom/predicate
publication_strategy('partnerships with publishers'). % Assumed atom/predicate
% Define societal and cultural impacts
impact('children literature').
impact('education').
% External influences
influence('publishers').
influence('mentors').
influence('cultural trends'). % Assumed atom/predicate
% Personal efforts and innovations
innovation('unique literary style').
risk_taken('experimental themes'). % Assumed atom/predicate
% Define the conditions for Dr. Seuss being self-made
self_made_author(Author) :-
marketed_by(Author),
published_by(Author),
impacted_society(Author),
minimal_external_influence(Author).
% Relations
author_of('Dr. Seuss', Book) :- book(Book).
innovated('Dr. Seuss', Style) :- writing_style(Style).
marketed_by('Dr. Seuss') :- marketing_strategy(_).
published_by('Dr. Seuss') :- publication_strategy(_).
impacted_society('Dr. Seuss') :- impact(_).
% Check for minimal external influence
minimal_external_influence('Dr. Seuss') :-
\+ (influence(Inf), heavily_influenced_by('Dr. Seuss', Inf)).
heavily_influenced_by('Dr. Seuss', 'publishers'). % Assumed to be false
heavily_influenced_by('Dr. Seuss', 'mentors'). % Assumed to be false
heavily_influenced_by('Dr. Seuss', 'cultural trends'). % Assumed to be false
% Query to determine if Dr. Seuss made himself famous
query :-
self_made_author('Dr. Seuss').
% Uncomment the line below to run the query
 :- query.
%query.