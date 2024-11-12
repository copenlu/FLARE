% Define the total cost of all the cookies
total_cost_of_cookies(Packs, CookiesPerPack, CostPerCookie, TotalCost) :-
TotalCookies is Packs * CookiesPerPack,
TotalCost is TotalCookies * CostPerCookie.
% Define the calculation for change
calculate_change(TotalCost, AmountPaid, Change) :-
Change is AmountPaid - TotalCost.
% Predicate to encapsulate the entire calculation and output the change Carl will receive
calculate_change_for_carl(Change) :-
total_cost_of_cookies(10, 6, 0.10, TotalCost),  % Given values in the problem
calculate_change(TotalCost, 10, Change).  % Amount paid is $10
% Query to find the change Carl will receive
query(Change) :-
calculate_change_for_carl(Change).
% Uncomment the following line to run the query and find out the change Carl will receive
% ?- query(Change).
%query(Change).