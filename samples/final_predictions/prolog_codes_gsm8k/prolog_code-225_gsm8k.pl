% Define the points scored by Naomi, Yuri, and Brianna
naomi_points(68).
yuri_points(YuriPoints) :- naomi_points(NaomiPoints), YuriPoints is (NaomiPoints / 2) + 10.
brianna_points(BriannaPoints) :- naomi_points(NaomiPoints), BriannaPoints is NaomiPoints + 17.
% Define the total points and calculate Jojo's points
total_points(TotalPoints) :- naomi_points(NaomiPoints), yuri_points(YuriPoints), brianna_points(BriannaPoints), TotalPoints is NaomiPoints + YuriPoints + BriannaPoints + JojoPoints.
jojo_points(JojoPoints) :- total_points(TotalPoints), naomi_points(NaomiPoints), yuri_points(YuriPoints), brianna_points(BriannaPoints), JojoPoints is TotalPoints - (NaomiPoints + YuriPoints + BriannaPoints).
% Query predicate to run the program and get the result
query(JojoPoints) :-
jojo_points(JojoPoints).
% Uncomment the following line to run the query
% ?- query(JojoPoints).
%query(JojoPoints).