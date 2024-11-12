% Define the total number of M&M purchased
total_m_and_m(Total) :-
Total is 3 * 10 * 30.  % 3 large bags, 10 ounces each, 30 M&M per ounce
% Define the predicate to calculate the number of small bags that can be made
small_bags(TotalMAndM, MAndMPerBag, NumBags) :-
NumBags is TotalMAndM // MAndMPerBag.  % Calculate number of small bags
% Query predicate to run the program and get the result
query(NumBags) :-
total_m_and_m(TotalM),
small_bags(TotalM, 10, NumBags).
% Uncomment the following line to run the query
% ?- query(NumBags).
%query(NumBags).