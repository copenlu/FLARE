% Define the cost of the N-th glass based on the pricing pattern
glass_cost(N, Cost) :-
N mod 2 =:= 1, % Check if N is odd
Cost is 5.
glass_cost(N, Cost) :-
N mod 2 =:= 0, % Check if N is even
Cost is 0.6 * 5.
% Define the total cost of N glasses
total_cost(N, Total) :-
findall(Cost, (between(1, N, I), glass_cost(I, Cost)), Costs),
sum_list(Costs, Total).
% Predicate to encapsulate the entire calculation and output the total cost
calculate_total_cost(TotalCost) :-
total_cost(16, TotalCost). % Assumed atom: 16 glasses to be bought
% Query to find out how much Kylar needs to pay for 16 glasses
query(TotalCost) :-
calculate_total_cost(TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).