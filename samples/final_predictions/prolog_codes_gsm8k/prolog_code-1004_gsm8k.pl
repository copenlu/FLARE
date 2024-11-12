% Define the rule for calculating total beads received
total_beads_received(MotherBeads, SisterBeads, FriendBeads, TotalBeads) :-
SisterBeads is MotherBeads + 10,
FriendBeads is 2 * MotherBeads,
TotalBeads is MotherBeads + SisterBeads + FriendBeads.
% Calculate the total number of beads Adrianne has
calculate_total_beads(TotalBeads) :-
total_beads_received(20, SisterBeads, FriendBeads, TotalBeads).  % Mother gave 20 beads
% Query to find the total number of beads Adrianne has
query(TotalBeads) :-
calculate_total_beads(TotalBeads).
% Uncomment the following line to run the query
% ?- query(TotalBeads).
%query(TotalBeads).