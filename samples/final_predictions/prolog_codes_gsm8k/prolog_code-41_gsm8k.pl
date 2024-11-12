% Define Ben's iPhone's age based on Suzy's iPhone's age
age_ben(SuzyAge, BenAge) :-
BenAge is 2 * SuzyAge.
% Define Brandon's iPhone's age based on Ben's iPhone's age
age_brandon(BenAge, BrandonAge) :-
BrandonAge is 4 * BenAge.
% Predicate to encapsulate the entire calculation and output Brandon's iPhone's age
calculate_brandons_age(BrandonAge) :-
age_ben(1, BenAge),  % Suzy's iPhone is 1 year old
age_brandon(BenAge, BrandonAge).
% Query to find Brandon's iPhone's age
query(BrandonAge) :-
calculate_brandons_age(BrandonAge).
% Uncomment the following line to run the query
% ?- query(BrandonAge).
%query(BrandonAge).