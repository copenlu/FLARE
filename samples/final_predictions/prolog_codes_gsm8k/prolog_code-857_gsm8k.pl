% Define the number of dishes made by Kora
dishes_kora(20).
% Calculate the number of dishes made by Rory based on Kora's dishes
dishes_rory(KoraDishes, RoryDishes) :-
RoryDishes is KoraDishes + 20.
% Calculate the number of dishes made by Jada based on Rory's dishes
dishes_jada(RoryDishes, JadaDishes) :-
JadaDishes is 2 * RoryDishes.
% Calculate the total number of dishes made by all three
total_dishes(TotalDishes) :-
dishes_kora(KoraDishes),
dishes_rory(KoraDishes, RoryDishes),
dishes_jada(RoryDishes, JadaDishes),
TotalDishes is KoraDishes + RoryDishes + JadaDishes.
% Query predicate to find the total number of dishes made by all three
query(TotalDishes) :-
total_dishes(TotalDishes).
% Uncomment the line below to run the query
% query(TotalDishes).
%query(TotalDishes).