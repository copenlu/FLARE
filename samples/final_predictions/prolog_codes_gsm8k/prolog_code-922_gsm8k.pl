% Assumed atom: DeniseToday
denise_total_pages(TotalPages) :- TotalPages is 10 + DeniseToday.
daniel_total_pages(TotalPages) :- TotalPages is 13.
pages_difference(Difference) :-
denise_total_pages(DeniseTotal),
daniel_total_pages(DanielTotal),
Difference is DeniseTotal - DanielTotal.
% Query predicate to run the program and get the result
query(Difference) :-
pages_difference(Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).