% Define constants
initial_marshmallows(35).
s'mores_per_kid(9).
marshmallows_dropped(3).
% Calculate the number of S'mores each kid can make with the remaining marshmallows
calculate_s'mores(S'moresPerKid) :-
initial_marshmallows(InitialMarshmallows),
s'mores_per_kid(S'moresPerKid),
marshmallows_dropped(MarshmallowsDropped),
TotalS'mores is s'mores_per_kid * 2,
MarshmallowsLeft is InitialMarshmallows - MarshmallowsDropped,
S'moresPerKid is MarshmallowsLeft / 2.
% Query to calculate how many S'mores each kid can make with the remaining marshmallows
query(S'moresPerKid) :-
calculate_s'mores(S'moresPerKid).
% Uncomment the following line to run the query and calculate the number of S'mores each kid can make
% ?- query(S'moresPerKid).
%query(S'moresPerKid).