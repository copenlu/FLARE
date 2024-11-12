% Facts about Walt Disney's lifespan
lived(walt_disney, 1901, 1966).
% Facts about the development of email technology
email_development(1971).  % The year when the first form of email was sent
% Predicate to check if a person could have used email based on their lifespan
could_use_email(Person) :-
lived(Person, BirthYear, DeathYear),
email_development(EmailYear),
BirthYear =< EmailYear,
DeathYear >= EmailYear.
% Predicate to determine if Walt Disney could use email
could_walt_disney_use_email(CouldUseEmail) :-
(   could_use_email(walt_disney)
->  CouldUseEmail = true
;   CouldUseEmail = false).
% Query to determine if Walt Disney could use email
query :-
could_walt_disney_use_email(CouldUseEmail),
CouldUseEmail = false.
% Uncomment the following line to run the query
 :- query.
%query.