% Define the number of cookies Suzanne made
cookies_made(suzanne, 36).
% Calculate the number of cookies made by Josh
cookies_made(josh, NumCookies) :-
cookies_made(suzanne, SuzanneCookies),
NumCookies is SuzanneCookies / 4.
% Calculate the number of cookies made by Kelsie
cookies_made(kelsie, NumCookies) :-
cookies_made(josh, JoshCookies),
NumCookies is JoshCookies * 2.
% Query predicate to run the program and get the result
query(KelsieCookies) :-
cookies_made(kelsie, KelsieCookies).
% Uncomment the following line to run the query
% ?- query(KelsieCookies).
%query(KelsieCookies).