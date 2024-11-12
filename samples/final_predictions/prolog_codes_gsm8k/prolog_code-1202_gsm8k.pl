% Define the number of pods in the regular box and the price
regular_box_pods(100).  % Assumed atom/predicate
regular_box_price(12).  % Assumed atom/predicate
% Calculate the number of pods in the special size box
special_size_box_pods(SpecialSizePods) :-
regular_box_pods(RegularPods),  % Get the number of pods in the regular box
SpecialSizePods is RegularPods + RegularPods * 0.2.  % 20% more pods
% Calculate the cost per pod for the special size box
cost_per_pod(CostPerPod) :-
regular_box_price(Price),  % Get the price of the regular box
special_size_box_pods(TotalPods),  % Get the total number of pods in the special size box
CostPerPod is Price / TotalPods.
% Calculate the number of dishwashing cycles for $1
cycles_for_one_dollar(Cycles) :-
cost_per_pod(CostPerPod),  % Get the cost per pod for the special size box
Cycles is floor(1 / CostPerPod).  % Calculate the number of cycles for $1
% Query predicate to get the number of dishwashing cycles for $1
query(Cycles) :-
cycles_for_one_dollar(Cycles).
% Uncomment the following line to run the query
% query(Cycles).
%query(Cycles).