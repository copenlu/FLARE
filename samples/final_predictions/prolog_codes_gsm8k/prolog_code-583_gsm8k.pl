% Define Liam's earnings as given in the problem
liam_earnings(LiamEarnings) :-
LiamEarnings is 63.
% Define Mitchell's earnings based on the number of lemonades sold and price per lemonade
mitchell_earnings(MitchellEarnings) :-
MitchellEarnings is 21 * 4.
% Define the predicate to calculate the difference in earnings between Mitchell and Liam
earnings_difference(Difference) :-
liam_earnings(LiamEarnings),
mitchell_earnings(MitchellEarnings),
Difference is MitchellEarnings - LiamEarnings.
% Query predicate to run the program and get the result
query(Difference) :-
earnings_difference(Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).