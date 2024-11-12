% Calculate Nikita's score based on Pierson's score
calculate_scores(PiersonScore, NikitaScore, TotalPoints) :-
HalfPiersonScore is PiersonScore / 2,
NikitaScore is HalfPiersonScore + 11,
TotalPoints is PiersonScore + NikitaScore.
% Query to calculate the scores of Pierson and Nikita, and the total points
query(PiersonScore, NikitaScore, TotalPoints) :-
calculate_scores(PiersonScore, NikitaScore, TotalPoints).
% Uncomment the following line to run the query and calculate the scores and total points
% ?- query(278, NikitaScore, TotalPoints).
%query(278, NikitaScore, TotalPoints).