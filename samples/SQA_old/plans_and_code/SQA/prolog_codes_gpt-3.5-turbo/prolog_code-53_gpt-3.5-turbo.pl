% Facts
employee(jesse_w_moore).
contribution(jesse_w_moore, mission_safety).
recognized_by_peers(jesse_w_moore).
% Rules
eligible_for_snoopy_award(Person) :-
employee(Person),
contribution(Person, mission_safety),
recognized_by_peers(Person).
% Query
query :- eligible_for_snoopy_award(jesse_w_moore).
%query.