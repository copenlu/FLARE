% Define the number of seashells brought back by each boy (assumed known)
seashells_boys(60).  % Assumed number of seashells brought back by each boy
% Define the number of seashells brought back by each girl
seashells_girls(G) :-
seashells_boys(B),  % Get the number of seashells brought back by each boy
G is 5 * B.  % Girls bring back 5 times the number of seashells brought back by each boy
% Define the total number of seashells brought back by all boys
total_seashells_boys(TotalBoysSeashells) :-
seashells_boys(SeashellsPerBoy),  % Get the number of seashells brought back by each boy
TotalBoysSeashells is 10 * SeashellsPerBoy.  % Total number of seashells brought back by all boys
% Define the total number of seashells brought back by all girls
total_seashells_girls(TotalGirlsSeashells) :-
seashells_girls(SeashellsPerGirl),  % Get the number of seashells brought back by each girl
TotalGirlsSeashells is 10 * SeashellsPerGirl.  % Total number of seashells brought back by all girls
% Query predicate to find the number of seashells brought back by each girl
query(SeashellsPerGirl) :-
seashells_girls(SeashellsPerGirl).
% Uncomment the line below to run the query
% ?- query(SeashellsPerGirl).
%query(SeashellsPerGirl).