% Define the angle between the ground and the pyramid (assumed known)
angle_between_ground_and_pyramid(32).
% Define the rate at which the sun moves upward (assumed known)
sun_movement_rate(5).
% Calculate the total movement of the sun after a given time
total_sun_movement(Time, TotalMovement) :-
sun_movement_rate(Rate),
TotalMovement is Time * Rate.
% Calculate the final angle between the ground and the sun
final_angle_between_ground_and_sun(TotalMovement, FinalAngle) :-
angle_between_ground_and_pyramid(Angle),
FinalAngle is Angle + TotalMovement.
% Query predicate to find the final angle between the ground and the sun after 10 hours
query(FinalAngle) :-
total_sun_movement(10, TotalMovement),
final_angle_between_ground_and_sun(TotalMovement, FinalAngle).
% Uncomment the line below to run the query
% query(FinalAngle).
%query(FinalAngle).