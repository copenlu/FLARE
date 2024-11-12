% Assumed atom/predicate
stadium_status(parc_des_princes, date(2020, 6, _), closed).
% Assumed atom/predicate
event(parc_des_princes, football_match, date(2020, 6, _), no_audience).
% Assumed atom/predicate
government_regulation(france, date(2020, 6, _), no_public_gatherings).
operational(Stadium, Date) :-
stadium_status(Stadium, Date, open),
\+ government_regulation(_, Date, no_public_gatherings).
has_event(Stadium, Date) :-
event(Stadium, _, Date, _).
% Query predicate
query :-
operational(parc_des_princes, date(2020, 6, _)),
has_event(parc_des_princes, date(2020, 6, _)).
%query.