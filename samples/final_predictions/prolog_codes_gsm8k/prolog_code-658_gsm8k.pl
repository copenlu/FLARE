% Define the cost of one suit and the number of suits purchased
cost_of_suit(750).
number_of_suits(10).
% Define the cost of one dress pant (1/5 of the suit cost) and the number of dress pants purchased
cost_of_dress_pant(SuitCost) :-
Cost is SuitCost / 5.
number_of_dress_pants(10).
% Define the cost of one dress shirt and the number of dress shirts per suit
cost_of_dress_shirt(60).
number_of_dress_shirts_per_suit(3).
% Define the total cost calculation rule
total_cost(TotalCost) :-
cost_of_suit(SuitCost),
number_of_suits(NumSuits),
cost_of_dress_pant(SuitCost),
number_of_dress_pants(NumPants),
cost_of_dress_shirt(ShirtCost),
number_of_suits(NumSuits),
number_of_dress_shirts_per_suit(ShirtsPerSuit),
TotalCost is (SuitCost * NumSuits) + (Cost * NumPants) + (ShirtCost * NumSuits * ShirtsPerSuit).
% Query to find the total cost of James' wardrobe purchases
query(TotalCost) :-
total_cost(TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).