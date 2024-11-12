% Define the number of DVDs bought by each group of customers
dvds_bought_by_first_three(3).
dvds_bought_by_next_two(2).
dvds_bought_by_last_three(0).
% Define the rule to calculate the total number of DVDs sold
total_dvds_sold(Total) :-
dvds_bought_by_first_three(FirstThree),
dvds_bought_by_next_two(NextTwo),
dvds_bought_by_last_three(LastThree),
Total is FirstThree + NextTwo + LastThree.
% Predicate to encapsulate the entire calculation and output the total number of DVDs sold
calculate_total_dvds_sold(Total) :-
total_dvds_sold(Total).
% Query to find the total number of DVDs sold by Billy on Tuesday
query(Total) :-
calculate_total_dvds_sold(Total).
% Uncomment the following line to run the query
% ?- query(Total).
%query(Total).