% Predicate to calculate the current ages of Mico and Marco
% Params: Sum of ages, AgeMico, AgeMarco
current_ages(SumOfAges, AgeMico, AgeMarco) :-
AgeMico is SumOfAges // 2,  % Integer division to split the sum equally
AgeMarco is SumOfAges // 2.
% Predicate to calculate the age in 10 years
% Params: CurrentAge, FutureAge
age_in_10_years(CurrentAge, FutureAge) :-
FutureAge is CurrentAge + 10.
% Predicate to calculate the sum of ages in 10 years
% Params: AgeMico10Years, AgeMarco10Years, SumIn10Years
sum_of_ages_in_10_years(AgeMico10Years, AgeMarco10Years, SumIn10Years) :-
SumIn10Years is AgeMico10Years + AgeMarco10Years.
% Main predicate to compute the sum of ages of Mico and Marco in 10 years
% Params: SumIn10Years
calculate_sum_in_10_years(SumIn10Years) :-
SumOfAges = 20,
% Calculate current ages
current_ages(SumOfAges, AgeMico, AgeMarco),
% Calculate ages in 10 years
age_in_10_years(AgeMico, AgeMico10Years),
age_in_10_years(AgeMarco, AgeMarco10Years),
% Calculate sum of ages in 10 years
sum_of_ages_in_10_years(AgeMico10Years, AgeMarco10Years, SumIn10Years).
% Query predicate to get the sum of ages of Mico and Marco in 10 years
query(SumIn10Years) :-
calculate_sum_in_10_years(SumIn10Years).
% Uncomment the following line to run the query
% query(SumIn10Years).
%query(SumIn10Years).