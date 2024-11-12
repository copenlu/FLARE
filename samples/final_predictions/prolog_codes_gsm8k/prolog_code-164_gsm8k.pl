% Define the depth of water in the tank on Tuesday
depth_on_tuesday(DepthMonday, DepthTuesday) :-
DepthTuesday is DepthMonday + 7.
% Define the depth of water in the tank on Wednesday
depth_on_wednesday(DepthTuesday, DepthWednesday) :-
DepthWednesday is (2/3) * DepthTuesday.
% Given initial depth on Monday
initial_depth_on_monday(17).
% Calculate the depth on Tuesday and then on Wednesday
query(DepthWednesday) :-
initial_depth_on_monday(DepthMonday),
depth_on_tuesday(DepthMonday, DepthTuesday),
depth_on_wednesday(DepthTuesday, DepthWednesday).
% Uncomment the following line to run the query and find out the depth of water in the tank on Wednesday.
% ?- query(DepthWednesday).
%query(DepthWednesday).