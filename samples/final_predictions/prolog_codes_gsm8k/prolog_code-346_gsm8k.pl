% Define the number of hot dogs eaten by each person
hot_dogs(luke, 2).
hot_dogs(thomas, HotDogs) :- hot_dogs(luke, LukeHotDogs), HotDogs is 3 * LukeHotDogs.
hot_dogs(john, HotDogs) :- hot_dogs(thomas, ThomasHotDogs), HotDogs is ThomasHotDogs / 2.
% Calculate the difference in hot dogs eaten by John and Luke
difference_john_luke(Difference) :- hot_dogs(john, JohnHotDogs), hot_dogs(luke, LukeHotDogs), Difference is JohnHotDogs - LukeHotDogs.
% Query predicate to run the program and get the result
query(Difference) :-
difference_john_luke(Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).