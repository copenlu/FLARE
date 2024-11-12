% Define the rule to calculate the total number of shells collected by Martha by her 10th birthday
shells_collected_by_10th_birthday(Age, Shells) :-
TotalMonths is (Age - 5) * 12,  % Calculate the total number of months between turning 5 and 10
Shells is TotalMonths.          % Total number of shells collected is equal to total months
% Query to find the total number of shells collected by Martha by her 10th birthday
query_shells_collected_by_10th_birthday(Shells) :-
shells_collected_by_10th_birthday(10, Shells).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_shells_collected_by_10th_birthday(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).