% Define Charlie's shoe size based on Sophie's shoe size
charlie_shoe_size(SophieSize, CharlieSize) :-
CharlieSize is 5 * SophieSize.
% Define the rule to calculate the average shoe size
average_shoe_size(SophieSize, CharlieSize, AverageSize) :-
AverageSize is (SophieSize + CharlieSize) / 2.
% Given Sophie's shoe size is 5
SophieSize = 5,
% Calculate Charlie's shoe size
charlie_shoe_size(SophieSize, CharlieSize),
% Calculate the average shoe size
average_shoe_size(SophieSize, CharlieSize, AverageSize).
% Predicate to encapsulate the entire calculation and output the average shoe size
calculate_average_shoe_size(AverageSize) :-
SophieSize = 5,  % Sophie's shoe size
charlie_shoe_size(SophieSize, CharlieSize),  % Calculate Charlie's shoe size
average_shoe_size(SophieSize, CharlieSize, AverageSize).  % Calculate the average shoe size
% Query to find the average shoe size between Charlie and Sophie
query(AverageSize) :-
calculate_average_shoe_size(AverageSize).
% Uncomment the following line to run the query
% ?- query(AverageSize).
%query(AverageSize).