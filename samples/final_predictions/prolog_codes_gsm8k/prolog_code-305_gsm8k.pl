% Define the number of crates sold on each day of the week
crates_sold(monday, 0).
crates_sold(tuesday, 15).
crates_sold(wednesday, 12).
crates_sold(thursday, 18).
crates_sold(friday, 0).
crates_sold(saturday, 10).
crates_sold(sunday, 10).
% Define a predicate to calculate the total crates sold during the week
total_crates_sold(Total) :-
findall(Crates, crates_sold(_, Crates), CratesList),
sum_list(CratesList, Total).
% Define a predicate to calculate how many crates Sam was off from his target
crates_off_target(Difference) :-
total_crates_sold(Total),
Target = 120,
Difference is Target - Total.
% Query predicate to run the program and get the result
query(Difference) :-
crates_off_target(Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).