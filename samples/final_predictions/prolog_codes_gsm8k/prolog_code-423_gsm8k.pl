% Predicate to calculate the total number of cookies consumed in 30 days
total_cookies(Consumed) :-
Consumed is 2 * 30.
% Predicate to convert the total number of cookies into dozens
cookies_in_dozens(Consumed, Dozens) :-
Dozens is Consumed // 12.
% Main predicate to calculate the number of dozens of cookies Shannon needs to make
shannon_cookies(Dozens) :-
total_cookies(Consumed),
cookies_in_dozens(Consumed, Dozens).
% Query to find out how many dozens of cookies Shannon needs to make for 30 days
query(Dozens) :-
shannon_cookies(Dozens).
% Uncomment the following line to run the query
% ?- query(Dozens).
%query(Dozens).