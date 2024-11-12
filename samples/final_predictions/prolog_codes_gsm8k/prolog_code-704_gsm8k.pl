% Define the equation representing the total ages of the siblings
total_ages(T, TwinAge) :-
TwinAge is T + 7,
Total is 3*T + 2*TwinAge,
Total =:= 44.
% Calculate the age of one of the twins
calculate_age(T, TwinAge) :-
total_ages(T, TwinAge).
% Query to find the age of one of the twins
query(TwinAge) :-
calculate_age(T, TwinAge).
% Uncomment the following line to run the query and calculate the age of one of the twins
% ?- query(TwinAge).
%query(TwinAge).