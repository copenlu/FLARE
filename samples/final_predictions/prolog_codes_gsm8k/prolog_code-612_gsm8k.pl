% Define the rule to calculate the largest angle in the triangle
largest_angle_in_triangle(LargestAngle) :-
SmallestAngle is 180 / 6, % Calculate the smallest angle
Angle2 is 2 * SmallestAngle, % Calculate the angle that is twice the smallest angle
Angle3 is 3 * SmallestAngle, % Calculate the angle that is three times the smallest angle
% Determine the largest angle among the three
(SmallestAngle > Angle2, SmallestAngle > Angle3, LargestAngle is SmallestAngle;
Angle2 > SmallestAngle, Angle2 > Angle3, LargestAngle is Angle2;
LargestAngle is Angle3).
% Query to find the largest angle in the triangle
query(LargestAngle) :-
largest_angle_in_triangle(LargestAngle).
% Uncomment the following line to run the query
% ?- query(LargestAngle).
%query(LargestAngle).