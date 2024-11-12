% Define the rule for calculating the sum of Emil's dad and brother's ages
sum_of_ages(DadAge, BrotherAge, SumAges) :-
DadAge + BrotherAge =:= SumAges.
% Define the given conditions and solve for Dad's and Brother's ages
emil_age(19).
future_age(24).
emil_age_at_future_age(EmilAge) :- emil_age(EmilAge), future_age(FutureAge), EmilAge =:= FutureAge.
dad_age(DadAge) :- emil_age_at_future_age(EmilAge), DadAge is EmilAge * 2.
brother_age(BrotherAge) :- emil_age_at_future_age(EmilAge), BrotherAge is EmilAge / 2.
% Calculate the sum of Dad's and Brother's ages
sum_of_ages(DadAge, BrotherAge, SumAges).
% Predicate to encapsulate the entire calculation and output the sum of Dad's and Brother's ages
calculate_sum_of_ages(SumAges) :-
dad_age(DadAge),
brother_age(BrotherAge),
sum_of_ages(DadAge, BrotherAge, SumAges).
% Query to find the sum of Emil's dad and brother's ages
query(SumAges) :-
calculate_sum_of_ages(SumAges).
% Uncomment the following line to run the query
% ?- query(SumAges).
%query(SumAges).