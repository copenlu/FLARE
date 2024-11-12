% Define the rule to calculate the number of cookies baked last year
calculate_cookies_baked_last_year(LastYearCookies) :-
% Calculate the total number of cookies before any additions or subtractions
TotalBeforeMistake is 2 * LastYearCookies + 15,
% Calculate the total number of cookies after dropping 5
TotalAfterMistake is TotalBeforeMistake - 5,
% Check if the final count matches the total of 110 cookies
TotalAfterMistake =:= 110.
% Query to find the number of cookies Henry baked last year
query(LastYearCookies) :-
calculate_cookies_baked_last_year(LastYearCookies).
% Uncomment the following line to run the query and find out how many cookies Henry baked last year
% ?- query(LastYearCookies).
%query(LastYearCookies).