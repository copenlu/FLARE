% Define a predicate to calculate the number of shells found by each team
shells_found(TotalShells, ShellsAlphas, ShellsFinders, ShellsGogetters) :-
% Calculate the number of shells found by Team Alphas (40% of total shells)
ShellsAlphas is round(0.4 * TotalShells),
% Calculate the number of shells remaining after Team Alphas' discovery
RemainingShells is TotalShells - ShellsAlphas,
% Calculate the number of shells found by Team The finders (60% of the remaining shells)
ShellsFinders is round(0.6 * RemainingShells),
% Calculate the number of shells found by Team Gogetters
ShellsGogetters is TotalShells - ShellsAlphas - ShellsFinders.
% Define a query predicate to find out the number of shells found by Team Gogetters
query(ShellsGogetters) :-
% Total shells discovered is 700
shells_found(700, ShellsAlphas, ShellsFinders, ShellsGogetters).
% Uncomment the line below to run the query in SWI-Prolog
% query(ShellsGogetters).
%query(ShellsGogetters).