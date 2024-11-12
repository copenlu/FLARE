% Define the number of skeins needed for each item type
skeins_needed(hat, 2).
skeins_needed(scarf, 4).
skeins_needed(sweater, 12).
skeins_needed(mittens, 1).
skeins_needed(socks, 2).
% Calculate the total number of skeins needed for all items
total_skeins_needed(Total) :-
skeins_needed(hat, HatSkeins),
skeins_needed(scarf, ScarfSkeins),
skeins_needed(sweater, SweaterSkeins),
skeins_needed(mittens, MittensSkeins),
skeins_needed(socks, SocksSkeins),
Total is (HatSkeins + ScarfSkeins + SweaterSkeins + MittensSkeins + SocksSkeins) * 3.
% Query predicate to run the program and get the result
query(Total) :-
total_skeins_needed(Total).
% Uncomment the following line to run the query
% ?- query(Total).
%query(Total).