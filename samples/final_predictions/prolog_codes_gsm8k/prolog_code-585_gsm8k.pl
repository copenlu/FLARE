% Define the cost of spaying
spaying_cost(200).
% Define the total cost of vaccines
vaccine_cost(60).  % 3 vaccines * $20 each
% Define the total cost of broken vases
vase_cost(48).  % 4 vases * $12 each
% Calculate the total cost of Leah's kitten
total_cost(Total) :-
spaying_cost(Spaying),
vaccine_cost(Vaccine),
vase_cost(Vase),
Total is Spaying + Vaccine + Vase.
% Query predicate to find the total cost
query(Total) :-
total_cost(Total).
% Uncomment the line below to run the query
% ?- query(Total).
%query(Total).