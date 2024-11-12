% Define the age of Chenny
chenny_age(10).
% Define the age of Alyana based on Chenny's age
alyana_age(Age) :-
chenny_age(Chenny),
Age is Chenny - 4.
% Define the age of Anne based on Alyana's age
anne_age(Age) :-
alyana_age(Alyana),
Age is Alyana + 2.
% Query predicate to find the age of Anne
query(AnneAge) :-
anne_age(AnneAge).
% Uncomment the line below to run the query
% ?- query(AnneAge).
%query(AnneAge).