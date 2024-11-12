% Define the rule to calculate the number of white hats
white_hats(TotalHats, WhiteHats) :-
RedHats is TotalHats // 2,                    % Calculate the number of red hats
RemainingHats is TotalHats - RedHats,         % Calculate the number of remaining hats
BlueHats is (3 * RemainingHats) // 5,         % Calculate the number of blue hats
WhiteHats is TotalHats - RedHats - BlueHats.  % Calculate the number of white hats
% Query to find the number of white hats when Skyler has 100 hats
query_white_hats(WhiteHats) :-
white_hats(100, WhiteHats).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_white_hats(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).