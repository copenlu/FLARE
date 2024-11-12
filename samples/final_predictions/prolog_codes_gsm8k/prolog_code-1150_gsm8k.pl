% Define the number of toys produced by each worker per hour
toys_per_hour(worker1, 6).
toys_per_hour(worker2, 6).
toys_per_hour(worker3, 4).
toys_per_hour(worker4, 4).
% Define the total toys produced by the first four workers in 10 hours
total_toys_produced(TotalToys) :-
toys_per_hour(worker1, Rate1),
toys_per_hour(worker2, Rate2),
toys_per_hour(worker3, Rate3),
toys_per_hour(worker4, Rate4),
TotalToys is ((Rate1 + Rate2) + (Rate3 + Rate4)) * 10.
% Define the remaining toys needed to complete the order
remaining_toys_needed(RemainingToys) :-
TotalOrder = 400,
total_toys_produced(TotalProduced),
RemainingToys is TotalOrder - TotalProduced - 20.
% Define the production rate of the fifth worker
production_rate_fifth_worker(Rate5) :-
remaining_toys_needed(RemainingToys),
Rate5 is RemainingToys / 10.  % As the fifth worker works for 10 hours
% Query predicate to run the program and get the result
query(Rate5) :-
production_rate_fifth_worker(Rate5).
% Uncomment the following line to run the query
% ?- query(Rate5).
%query(Rate5).