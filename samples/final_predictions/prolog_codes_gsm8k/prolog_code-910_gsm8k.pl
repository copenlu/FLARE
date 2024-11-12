% Define the predicate to calculate the number of cookies in each jar
% Params: TotalCookies, CookiesAte, Jars
cookies_in_jars(TotalCookies, CookiesAte, Jars) :-
RemainingCookies is TotalCookies - CookiesAte,  % Calculate remaining cookies after Lani ate some
CookiesPerJar is RemainingCookies // Jars,  % Calculate number of cookies in each jar
write('Number of cookies in each jar: '), write(CookiesPerJar).  % Print the result
% Query predicate to run the program and get the result
query :-
cookies_in_jars(55, 5, 5).  % TotalCookies = 55, CookiesAte = 5, Jars = 5
% Uncomment the following line to run the query
% ?- query.
% ?- query.