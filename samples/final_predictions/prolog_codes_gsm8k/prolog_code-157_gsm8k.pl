% Calculate the number of fries remaining after the ants carry one away
remaining_fries_after_ants(PreviousFries, RemainingFries) :-
RemainingFries is PreviousFries - 1.
% Calculate the number of fries remaining after the raccoon steals two-thirds
remaining_fries_after_raccoon(PreviousFries, RemainingFries) :-
RemainingFries is PreviousFries * (1/3).
% Calculate the number of fries remaining after the pigeons eat three each
remaining_fries_after_pigeons(PreviousFries, RemainingFries) :-
RemainingFries is PreviousFries + 9.
% Calculate the number of fries remaining after the seagull eats half of what Dave ate
remaining_fries_after_seagull(PreviousFries, RemainingFries) :-
RemainingFries is PreviousFries * 2.
% Calculate the original number of fries in the pack
original_fries(OriginalFries) :-
remaining_fries_after_ants(5, Remaining1),
remaining_fries_after_raccoon(Remaining1, Remaining2),
remaining_fries_after_pigeons(Remaining2, Remaining3),
remaining_fries_after_seagull(Remaining3, OriginalFries).
% Query to find the original number of fries in the pack
query(OriginalFries) :-
original_fries(OriginalFries).
% Uncomment the following line to run the query and find out the original number of fries in the pack
% ?- query(OriginalFries).
%query(OriginalFries).