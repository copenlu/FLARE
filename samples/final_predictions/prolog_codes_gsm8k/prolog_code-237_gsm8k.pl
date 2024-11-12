% Define how many shells Kylie collected on Monday
shells_collected_on_monday(RobertShells, KylieShells) :-
KylieShells is RobertShells + 5.
% Define how many shells Kylie collected on Tuesday
shells_collected_on_tuesday(KylieShellsMonday, KylieShellsTuesday) :-
KylieShellsTuesday is KylieShellsMonday * 2.
% Given that Robert collected 20 shells
% Query to find how many shells Kylie collected on Tuesday
query(KylieShellsTuesday) :-
shells_collected_on_monday(20, KylieShellsMonday),
shells_collected_on_tuesday(KylieShellsMonday, KylieShellsTuesday).
% Uncomment the following line to run the query
% ?- query(KylieShellsTuesday).
%query(KylieShellsTuesday).