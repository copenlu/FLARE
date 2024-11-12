% Define the rules to calculate the ages
wife_age(SteveAge, WifeAge) :-
WifeAge is SteveAge + 4.
son_age(WifeAge, SonAge) :-
SonAge is WifeAge / 2.
son_wife_age(SonAge, SonWifeAge) :-
SonWifeAge is SonAge - 3.
% Query to find the age of Steve's son's wife
query_son_wife_age(SonWifeAge) :-
wife_age(60, WifeAge),          % Steve is 60 years old
son_age(WifeAge, SonAge),       % Calculate the son's age
son_wife_age(SonAge, SonWifeAge).  % Calculate the son's wife's age
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_son_wife_age(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).