% Define the second friend's guess based on the first friend's guess
second_guess(FirstGuess, SecondGuess) :-
SecondGuess is FirstGuess / 2 + 20.
% Define the third friend's guess based on the first friend's guess
third_guess(FirstGuess, ThirdGuess) :-
ThirdGuess is FirstGuess * 1.25.
% Define the rule to calculate the average guess of all friends
average_guess(FirstGuess, Average) :-
second_guess(FirstGuess, SecondGuess),
third_guess(FirstGuess, ThirdGuess),
Average is (FirstGuess + SecondGuess + ThirdGuess) / 3.
% Calculate the average guess of Gunter's friends
calculate_average_guess(Average) :-
average_guess(80, Average).  % First friend's guess is 80
% Query to find the average guess
query(Average) :-
calculate_average_guess(Average).
% Uncomment the following line to run the query
% ?- query(Average).
%query(Average).