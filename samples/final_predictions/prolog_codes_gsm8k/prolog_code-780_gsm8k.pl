% Define the total number of Pomeranian girls
pomeranian_girls(6).  % Assumed number of Pomeranian girls
% Define the rule to calculate the number of Pomeranian puppies
pomeranian_puppies(TotalPuppies, PomeranianPuppies) :-
PomeranianPuppies is TotalPuppies * 2 // 3.
% Define the rule to calculate the number of Pomeranian girls
pomeranian_girls(PomeranianPuppies, PomeranianGirls) :-
PomeranianGirls is PomeranianPuppies // 3.
% Define the rule to calculate the total number of puppies
total_puppies(PomeranianPuppies, PomeranianGirls, TotalPuppies) :-
TotalPuppies is PomeranianPuppies / (2 / 3) + PomeranianGirls.
% Query predicate to find the total number of puppies Jana has
query(TotalPuppies) :-
pomeranian_girls(PomeranianPuppies, 6),  % Given number of Pomeranian girls
total_puppies(PomeranianPuppies, 6, TotalPuppies).
% Uncomment the line below to run the query
% query(TotalPuppies).
%query(TotalPuppies).