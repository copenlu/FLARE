% Define the number of bugs in the garden based on the number of ants
bugs_in_garden(Ants, Bugs) :-
Bugs is Ants / 2.
% Define the total number of insects in the garden
total_insects_in_garden(Ants, Bugs, TotalInsects) :-
TotalInsects is Ants + Bugs.
% Given number of ants
ants_in_garden(50).
% Calculate bugs and total insects in the garden
query(TotalInsects) :-
ants_in_garden(Ants),  % Assumed atom/predicate
bugs_in_garden(Ants, Bugs),  % Calculate bugs based on ants
total_insects_in_garden(Ants, Bugs, TotalInsects).  % Calculate total insects in the garden
% Uncomment the following line to run the query
% ?- query(TotalInsects).
%query(TotalInsects).