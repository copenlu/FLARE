% Define the total number of toys needed for the sorted play set
toys_needed(400).
% Define the current_toys predicate to calculate the number of toys Jonathan currently has
current_toys(TotalToysNeeded, AdditionalToys, CurrentToys) :-
CurrentToys is TotalToysNeeded - AdditionalToys.
% Calculate the number of toys Jonathan currently has
query(CurrentToys) :-
toys_needed(TotalToysNeeded),
AdditionalToys = 2,  % Assumed additional toys needed
current_toys(TotalToysNeeded, AdditionalToys, CurrentToys).
% Uncomment the line below to run the query
% query(CurrentToys).
%query(CurrentToys).