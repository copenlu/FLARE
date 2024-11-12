% Lucy sold all the apples picked on Monday
apples_picked_monday(0).
% Lucy picked 12 apples on Tuesday
apples_picked_tuesday(12).
% Lucy picked double the number of apples on Wednesday compared to Tuesday
apples_picked_wednesday(TuesdayApples, WednesdayApples) :-
WednesdayApples is TuesdayApples * 2.
% Calculate the total number of apples picked over the three days
total_apples_picked(TotalApples) :-
apples_picked_monday(MondayApples),
apples_picked_tuesday(TuesdayApples),
apples_picked_wednesday(TuesdayApples, WednesdayApples),
TotalApples is MondayApples + TuesdayApples + WednesdayApples.
% Query to find the total number of apples picked over the three days
query(TotalApples) :-
total_apples_picked(TotalApples).
% Uncomment the following line to run the query
% ?- query(TotalApples).
%query(TotalApples).