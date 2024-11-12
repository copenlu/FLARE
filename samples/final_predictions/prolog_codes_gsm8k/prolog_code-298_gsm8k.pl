% Define the number of medals won by Ali
ali_medals(22).
% Define the number of medals won by Izzy
izzy_medals(Izzy) :- Izzy is 22 - 5.
% Define the predicate to calculate the total number of medals Ali and Izzy have together
total_medals(Total) :- ali_medals(Ali), izzy_medals(Izzy), Total is Ali + Izzy.
% Define the predicate to calculate the total number of medals given out for counting
total_given_out(TotalGivenOut) :- total_medals(Total), TotalGivenOut is 10 * Total.
% Query predicate to run the program and get the result
query(TotalGivenOut) :-
total_given_out(TotalGivenOut).
% Uncomment the following line to run the query
% ?- query(TotalGivenOut).
%query(TotalGivenOut).