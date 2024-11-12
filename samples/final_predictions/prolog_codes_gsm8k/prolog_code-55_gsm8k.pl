% Define the rule to calculate revenue on a specific day
calculate_revenue(thursday, TruckTires, CarTires, Revenue) :-
Revenue is (TruckTires * 60) + (CarTires * 40).
calculate_revenue(friday, _, CarTires, Revenue) :-
Revenue is CarTires * 40.
% Define the rule to compare revenues on Thursday and Friday
compare_revenue(ThursdayRevenue, FridayRevenue, Difference) :-
ThursdayRevenue > FridayRevenue,
Difference is ThursdayRevenue - FridayRevenue.
compare_revenue(ThursdayRevenue, FridayRevenue, Difference) :-
ThursdayRevenue =< FridayRevenue,
Difference is FridayRevenue - ThursdayRevenue.
% Query to find out how much more revenue was earned on the day with higher revenue
query(Difference) :-
calculate_revenue(thursday, 6, 4, ThursdayRevenue),  % Thursday: 6 truck tires, 4 car tires
calculate_revenue(friday, 0, 12, FridayRevenue),     % Friday: 0 truck tires, 12 car tires
compare_revenue(ThursdayRevenue, FridayRevenue, Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).