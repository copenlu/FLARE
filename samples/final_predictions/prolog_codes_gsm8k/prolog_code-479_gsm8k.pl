% Define the quantities of items in one room
sheets_per_room(2).
pillowcases_per_room(Sheets) :- Sheets * 2.
towels_per_room(Pillowcases) :- Pillowcases * 2.
% Calculate the total pieces of laundry in one room
total_laundry_per_room(Sheets, Pillowcases, Towels, Total) :-
Total is Sheets + Pillowcases + Towels.
% Calculate the total pieces of laundry for 80 rooms
total_laundry_80_rooms(Total) :-
sheets_per_room(Sheets),
pillowcases_per_room(Sheets),
towels_per_room(Pillowcases),
total_laundry_per_room(Sheets, Pillowcases, Towels, TotalPerRoom),
Total is TotalPerRoom * 80.
% Query to calculate the total pieces of laundry for 80 rooms
query(Total) :-
total_laundry_80_rooms(Total).
% Uncomment the following line to run the query and calculate the total pieces of laundry for 80 rooms
% ?- query(Total).
%query(Total).