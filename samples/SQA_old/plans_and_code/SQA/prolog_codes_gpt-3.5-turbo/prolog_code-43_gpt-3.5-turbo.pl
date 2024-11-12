legal_driving_age(learner_permit, 15).
legal_driving_age(full_license, 16).
person(lil_wayne, 1982, 1995).
can_legally_drive(Person) :-
person(Person, BirthYear, CareerStartYear),
AgeAtStart is CareerStartYear - BirthYear,
legal_driving_age(full_license, LegalAge),
AgeAtStart >= LegalAge.
query :- can_legally_drive(Person).
%query.