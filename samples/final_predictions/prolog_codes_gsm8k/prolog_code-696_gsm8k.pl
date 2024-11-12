% Define the ratio of potatoes to hash browns
potatoes_to_hash_browns(6, 36).
% Calculate the number of hash browns from a given number of potatoes
calculate_hash_browns(Potatoes, HashBrowns) :-
potatoes_to_hash_browns(RatioPotatoes, RatioHashBrowns),
HashBrowns is Potatoes * (RatioHashBrowns / RatioPotatoes).
% Query to find out how many hash browns can be made from 96 potatoes
query(HashBrowns) :-
calculate_hash_browns(96, HashBrowns).
% Uncomment the following line to run the query and calculate the number of hash browns from 96 potatoes
% ?- query(HashBrowns).
%query(HashBrowns).