% Predicate to convert length from yards to feet
convert_yards_to_feet(LengthYards, LengthFeet) :-
LengthFeet is LengthYards * 3.
% Predicate to calculate the width of the room using the area and length
calculate_width(Area, Length, Width) :-
Width is Area / Length.
% Predicate to calculate the perimeter of the room using length and width
calculate_perimeter(Length, Width, Perimeter) :-
Perimeter is 2 * (Length + Width).
% Main predicate to calculate the perimeter of Billie's room
billie_room_perimeter(LengthYards, Area, Perimeter) :-
convert_yards_to_feet(LengthYards, LengthFeet),
calculate_width(Area, LengthFeet, Width),
calculate_perimeter(LengthFeet, Width, Perimeter).
% Query to find out the perimeter of Billie's room with length in yards and area in square feet
query(Perimeter) :-
billie_room_perimeter(3, 360, Perimeter).
% Uncomment the following line to run the query
% ?- query(Perimeter).
%query(Perimeter).