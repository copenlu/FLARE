% Define the number of signatures collected by Carol and Jennifer
signatures_collected(carol, 20).
signatures_collected(jennifer, 44).
% Calculate the number of signatures needed to reach the goal
calculate_signatures_needed(SignaturesNeeded) :-
signatures_collected(carol, CarolSignatures),
signatures_collected(jennifer, JenniferSignatures),
TotalSignaturesAfterFiveWeeks is CarolSignatures + JenniferSignatures,
RemainingWeeks = 3,  % Assumed remaining weeks
GoalSignatures = 100,  % Assumed total goal signatures
SignaturesNeeded is GoalSignatures - TotalSignaturesAfterFiveWeeks.
% Query to calculate the number of signatures needed to reach the goal
query(SignaturesNeeded) :-
calculate_signatures_needed(SignaturesNeeded).
% Uncomment the following line to run the query and calculate the number of signatures needed
% ?- query(SignaturesNeeded).
%query(SignaturesNeeded).