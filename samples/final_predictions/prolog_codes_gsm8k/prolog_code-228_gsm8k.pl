% Define the number of petunias based on the number of geraniums
number_of_petunias(Geraniums, Petunias) :-
Petunias is Geraniums - 40.
% Define the total number of flowers planted
total_flowers(Geraniums, Petunias, Total) :-
Total is Geraniums + Petunias.
% Calculate the total number of flowers planted by Andy
% Given: 90 geraniums
number_of_petunias(90, Petunias),
total_flowers(90, Petunias, Total).
% Query to find the total number of flowers planted
% ?- total_flowers(90, Petunias, Total).
