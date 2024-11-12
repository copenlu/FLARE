% Define the correct_answers predicate to calculate the number of correct answers for each question type
% Assumed atom/predicate: correct_answers(MC_Correct, TF_Correct, LA_Correct)
correct_answers(MC_Correct, TF_Correct, LA_Correct) :-
MC_Correct is round(0.8 * 10),  % 80% correct for multiple-choice questions
TF_Correct is round(0.9 * 20),  % 90% correct for true/false questions
LA_Correct is round(0.6 * 5).   % 60% correct for long-answer questions
% Define the total_points predicate to calculate the total points earned by Amy
% Assumed atom/predicate: total_points(TotalPoints)
total_points(TotalPoints) :-
correct_answers(MC_Correct, TF_Correct, LA_Correct),
TotalPoints is MC_Correct * 1 + TF_Correct * 1 + LA_Correct * 5.
% Query predicate to run the program and get the result
query(TotalPoints) :-
total_points(TotalPoints).
% Uncomment the following line to run the query
% ?- query(TotalPoints).
%query(TotalPoints).