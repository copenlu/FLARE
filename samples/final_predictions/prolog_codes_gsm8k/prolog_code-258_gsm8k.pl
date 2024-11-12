% Define the rule for calculating the total number of apps
total_apps(InitialApps, DeletedApps, DownloadedApps, TotalApps) :-
TotalApps is InitialApps - DeletedApps + DownloadedApps.
% Calculate the total number of apps on Travis's tablet
% Given values: InitialApps = 61, DeletedApps = 9, DownloadedApps = 18
% Query: total_apps(61, 9, 18, TotalApps).
% This should output the total number of apps on Travis's tablet after the actions.
% Predicate to get the total number of apps on Travis's tablet
query(TotalApps) :-
total_apps(61, 9, 18, TotalApps).
% Uncomment the line below to run the query
% ?- query(TotalApps).
%query(TotalApps).