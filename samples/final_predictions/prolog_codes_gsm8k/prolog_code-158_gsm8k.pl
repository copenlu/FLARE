% Define rules for calculating total hours on different types of days
total_hours_mon_wed_fri(TotalHours) :-
TotalHours is 3 * 3. % 3 classes of 1 hour each
total_hours_tue_thu(TotalHours) :-
TotalHours is 2 * 2. % 2 classes of 2 hours each
% Calculate total hours spent attending classes in one semester
total_hours_in_semester(TotalHours) :-
total_hours_mon_wed_fri(MonWedFri),
total_hours_tue_thu(TueThu),
TotalHours is (MonWedFri * 3 + TueThu * 2) * 16. % 16 weeks in a semester
% Query to find the total hours spent attending classes in one semester
query(TotalHours) :-
total_hours_in_semester(TotalHours).
% Uncomment the following line to run the query and find out the total hours spent attending classes in one semester.
% ?- query(TotalHours).
%query(TotalHours).