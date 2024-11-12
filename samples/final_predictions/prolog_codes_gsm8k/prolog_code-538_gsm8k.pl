% Define constants
total_raisins(27).
cups_per_batch(3/4).
% Calculate the number of batches of oatmeal cookies
batches_of_cookies(TotalRaisins, CupsPerBatch, NumBatches) :-
NumBatches is TotalRaisins / CupsPerBatch.
% Query predicate to run the program and get the result
query(NumBatches) :-
total_raisins(TotalRaisins),
cups_per_batch(CupsPerBatch),
batches_of_cookies(TotalRaisins, CupsPerBatch, NumBatches).
% Uncomment the following line to run the query
% ?- query(NumBatches).
%query(NumBatches).