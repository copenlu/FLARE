% Define the predicate to calculate the number of microphones without a pair
% Params: TotalMicrophones, MicrophonesWithoutPair
microphones_without_pair(TotalMicrophones, MicrophonesWithoutPair) :-
MicrophonesWithoutPair is round(0.2 * TotalMicrophones).  % Assuming 20% of microphones won't have a pair
% Define the predicate to calculate the number of microphone pairs that can be arranged
% Params: TotalMicrophones, MicrophonePairs
microphone_pairs(TotalMicrophones, MicrophonePairs) :-
microphones_without_pair(TotalMicrophones, MicrophonesWithoutPair),
MicrophonePairs is (TotalMicrophones - MicrophonesWithoutPair) / 2.
% Query predicate to run the program and get the result
query(MicrophonePairs) :-
microphone_pairs(50, MicrophonePairs).
% Uncomment the following line to run the query
% ?- query(MicrophonePairs).
%query(MicrophonePairs).