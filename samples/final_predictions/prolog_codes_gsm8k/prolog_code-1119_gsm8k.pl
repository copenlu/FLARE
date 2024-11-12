% Define the rule to calculate the final weight after each predator's consumption
final_weight(InitialWeight, FinalWeight) :-
T_Rex_Eats is InitialWeight / 2,               % Calculate the weight after the T-Rex ate
Velociraptors_Eat is (InitialWeight - T_Rex_Eats) / 2,  % Calculate the weight after the velociraptors scavenged
Allosaurus_Eat is Velociraptors_Eat - 270,      % Calculate the weight after the Allosaurus group consumed
FinalWeight is Allosaurus_Eat.                 % Final weight after all predators consumed
% Define the rule to calculate the initial weight before the T-Rex ate
initial_weight(InitialWeight) :-
final_weight(InitialWeight, 270).              % Calculate the initial weight before the T-Rex ate
% Query to find the initial weight of the triceratops
query(InitialWeight) :-
initial_weight(InitialWeight).
% Uncomment the following line to run the query
% ?- query(InitialWeight).
%query(InitialWeight).