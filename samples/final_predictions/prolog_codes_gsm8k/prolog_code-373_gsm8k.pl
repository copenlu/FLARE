% Define the boys_present predicate to calculate the number of fourth-grade boys present
boys_present(BoysPresent) :-
TotalFourthGraders = 96,  % Total number of fourth-graders
GirlsTotal = 43,  % Total number of fourth-grade girls
AbsentGirls = 5,  % Number of absent fourth-grade girls
AbsentBoys = 4,  % Number of absent fourth-grade boys
BoysPresent is TotalFourthGraders - GirlsTotal + AbsentGirls + AbsentBoys.
% Query predicate to run the program and get the result
query(BoysPresent) :-
boys_present(BoysPresent).
% Uncomment the following line to run the query
% ?- query(BoysPresent).
%query(BoysPresent).