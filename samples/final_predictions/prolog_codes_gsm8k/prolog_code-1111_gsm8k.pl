% Define the rule to calculate the remaining fence for Sam
remaining_fence_for_sam(RemainingFence) :-
% Set up the equation representing the total length of the fence and the lengths that Sam and Harry get
SamLength + HarryLength = 100,          % Total length of the fence is 100 feet
HarryLength is SamLength + 60,          % Harry gets 60 feet more than Sam
% Solve the equation to find the length of fence that Sam gets
SamLength is (100 - 60) / 2,            % Calculate Sam's length of fence
% Calculate the remaining fence for Sam
RemainingFence is 100 - SamLength.       % Calculate the remaining fence for Sam
% Query to find the remaining fence for Sam
query_remaining_fence_for_sam(RemainingFence) :-
remaining_fence_for_sam(RemainingFence).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_remaining_fence_for_sam(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).