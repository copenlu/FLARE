% Define a predicate to calculate the total amount of blood in ten sharks
total_shark_blood(TotalBlood) :-
% Assume the amount of blood in a whale is 40 gallons
WhaleBlood = 40,
% Calculate the amount of blood in one shark (three times the amount in a whale)
SharkBlood is WhaleBlood * 3,
% Calculate the total amount of blood in ten sharks
TotalBlood is SharkBlood * 10.
% Define a query predicate to find out the total amount of blood in ten sharks
query(TotalBlood) :-
total_shark_blood(TotalBlood).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalBlood).
%query(TotalBlood).