% Define the number of kids allergic to dairy, peanuts, and both
allergic_to(dairy, 9).
allergic_to(peanuts, 6).
allergic_to(both, 3).
% Calculate the number of kids not allergic to anything
not_allergic_to_anything(NumKidsNotAllergic) :-
allergic_to(dairy, DairyAllergic),
allergic_to(peanuts, PeanutsAllergic),
allergic_to(both, BothAllergic),
TotalAllergic is DairyAllergic + PeanutsAllergic - BothAllergic,
NumKidsNotAllergic is 32 - TotalAllergic.
% Query to calculate the number of kids not allergic to anything
query(NumKidsNotAllergic) :-
not_allergic_to_anything(NumKidsNotAllergic).
% Uncomment the following line to run the query and find the number of kids not allergic to anything
% ?- query(NumKidsNotAllergic).
%query(NumKidsNotAllergic).