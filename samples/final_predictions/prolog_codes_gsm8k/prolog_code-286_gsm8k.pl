% Define a rule to represent the given information
ruby_age(SamAge, RubyAge) :-
RubyAge is 6 * SamAge.
% In 9 years, Ruby will be 3 times as old as Sam
age_relationship(SamAge, RubyAge) :-
RubyAge is 6 * SamAge,
RubyAge + 9 is 3 * (SamAge + 9).
% Main predicate to calculate Sam's age based on the given information
calculate_sam_age(SamAge) :-
% Assume Sam's age as a starting point
SamAge = 1,  % Assumed Sam's age as 1 year
% Calculate Ruby's age based on the relationship
ruby_age(SamAge, RubyAge),
% Check if the age relationship holds true
age_relationship(SamAge, RubyAge).
% Query predicate to get Sam's age
query(SamAge) :-
calculate_sam_age(SamAge).
% Uncomment the following line to run the query
% query(SamAge).
%query(SamAge).