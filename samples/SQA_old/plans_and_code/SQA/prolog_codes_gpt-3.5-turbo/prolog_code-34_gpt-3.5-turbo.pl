% Define organizations
organization(swiss_guard, security, vatican).
organization(virginia_senate, legislative, virginia).
% Define legislative bodies
legislative_body(virginia_general_assembly, virginia, 140).
% Define eligibility rules
can_fill(Organization, LegislativeBody) :-
organization(Organization, Type, Jurisdiction),
legislative_body(LegislativeBody, Location, _),
Type = legislative,
Jurisdiction = Location.
% Example query
query :- can_fill(swiss_guard, virginia_general_assembly).
%query.