% Define total chips received by Amora and Lainey
total_chips_amora_lainey(AmoraChips, LaineyChips, TotalAmoraLaineyChips) :-
TotalAmoraLaineyChips is AmoraChips + LaineyChips.
% Define chips received by Collins
chips_collins(AmoraChips, LaineyChips, CollinsChips) :-
CollinsChips is AmoraChips + LaineyChips + 15.
% Define total chips altogether
total_chips_altogether(AmoraChips, LaineyChips, CollinsChips, TotalChips) :-
TotalChips is AmoraChips + LaineyChips + CollinsChips.
% Predicate to encapsulate the entire calculation and output total chips altogether
calculate_total_chips_altogether(TotalChips) :-
total_chips_amora_lainey(70, 70, TotalAmoraLaineyChips),  % Amora and Lainey each received 70 chips
chips_collins(70, 70, CollinsChips),  % Collins receives 15 more chips than Amora and Lainey
total_chips_altogether(70, 70, CollinsChips, TotalChips).
% Query to find the total number of corn chips altogether
query(TotalChips) :-
calculate_total_chips_altogether(TotalChips).
% Uncomment the following line to run the query
% ?- query(TotalChips).
%query(TotalChips).