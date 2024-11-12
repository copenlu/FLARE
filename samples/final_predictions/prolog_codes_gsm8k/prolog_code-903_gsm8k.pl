% Define the predicate to calculate Melanie's current age
% Assumed atom: AgeIn10Years
current_age(CurrentAge) :-
CurrentAge is AgeIn10Years - 10.
% Define the predicate to calculate Melanie's future age when it is three times her current age
% Assumed atom: CurrentAge
future_age(FutureAge) :-
FutureAge is CurrentAge * 3.
% Define the predicate to calculate the number of years it will take for Melanie's age to be thrice her present age
years_to_three_times(CurrentAge, FutureAge, Years) :-
Years is FutureAge - CurrentAge.
% Query predicate to run the program and get the result
query(Years) :-
current_age(CurrentAge),
future_age(FutureAge),
years_to_three_times(CurrentAge, FutureAge, Years).
% Uncomment the following line to run the query
% ?- query(Years).
%query(Years).