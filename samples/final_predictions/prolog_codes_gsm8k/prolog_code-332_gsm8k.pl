% Define the rule for trading in old records for new records
trade_in(OldRecords, NewRecords) :-
NewRecords is OldRecords / 2.
% Define the rule to calculate the total number of old records brought in by 5 people
total_old_records(TotalOldRecords) :-
trade_in(Old1, New1),  % Trade-in for person 1
trade_in(Old2, New2),  % Trade-in for person 2
trade_in(Old3, New3),  % Trade-in for person 3
trade_in(Old4, New4),  % Trade-in for person 4
trade_in(Old5, New5),  % Trade-in for person 5
TotalOldRecords is Old1 + Old2 + Old3 + Old4 + Old5.
% Query predicate to run the program and get the result
query(TotalOldRecords) :-
total_old_records(TotalOldRecords).
% Uncomment the following line to run the query
% ?- query(TotalOldRecords).
%query(TotalOldRecords).