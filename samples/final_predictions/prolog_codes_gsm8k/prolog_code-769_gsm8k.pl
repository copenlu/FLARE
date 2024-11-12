% Define the daily rental rates
weekday_rental_rate(60).
weekend_rental_rate(100).
% Calculate the total number of weekdays and weekends in two 4-week months
total_weekdays(TotalWeekdays) :- TotalWeekdays is 4 * 5 * 2. % 4 weeks * 5 weekdays * 2 months
total_weekends(TotalWeekends) :- TotalWeekends is 4 * 2. % 4 weekends * 2 months
% Calculate the total chairs rented on weekdays and weekends for each week
total_chairs_week(WeekdayTotal, WeekendTotal) :-
weekday_rental_rate(WeekdayRate),
weekend_rental_rate(WeekendRate),
WeekdayTotal is WeekdayRate * 5,
WeekendTotal is WeekendRate * 2.
% Calculate the total chairs rented out in two 4-week months
total_chairs_rented_out(TotalChairs) :-
total_weekdays(TotalWeekdays),
total_weekends(TotalWeekends),
total_chairs_week(WeekdayTotal, WeekendTotal),
TotalChairs is (WeekdayTotal * TotalWeekdays) + (WeekendTotal * TotalWeekends).
% Query predicate to find the total number of chairs rented out in two 4-week months
query(TotalChairs) :-
total_chairs_rented_out(TotalChairs).
% Uncomment the line below to run the query
% query(TotalChairs).
%query(TotalChairs).