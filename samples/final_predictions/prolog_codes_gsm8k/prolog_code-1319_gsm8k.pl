% Define the rule for calculating the total age of siblings
total_age(YoungerBrotherAge, NumSisters, SistersAge, TotalAge) :-
% Calculate the age of the older brother
OlderBrotherAge is YoungerBrotherAge * 2,
% Calculate the total age of the sisters
TotalSistersAge is NumSisters * SistersAge,
% Calculate the total age of all siblings
TotalAge is YoungerBrotherAge + OlderBrotherAge + TotalSistersAge.
% Define a predicate to execute the specific query with given values
query(TotalAge) :-
% Given: Younger brother is 12, 3 sisters aged 16
total_age(12, 3, 16, TotalAge).
% Uncomment the line below to run the query
% ?- query(TotalAge).
%query(TotalAge).