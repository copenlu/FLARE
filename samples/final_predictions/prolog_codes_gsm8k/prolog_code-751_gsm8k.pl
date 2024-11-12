% Define the total amount Greg found
total_amount_found(20).
% Define the number of siblings Greg has
number_of_siblings(3).
% Calculate the equal split of the total amount among Greg and his siblings
equal_split(TotalAmount, NumberOfSiblings, AmountPerSibling) :-
AmountPerSibling is TotalAmount // NumberOfSiblings.
% Query predicate to find the amount each sibling will receive
query(AmountPerSibling) :-
total_amount_found(TotalAmount),
number_of_siblings(NumberOfSiblings),
equal_split(TotalAmount, NumberOfSiblings, AmountPerSibling).
% Uncomment the line below to run the query
% query(AmountPerSibling).
%query(AmountPerSibling).