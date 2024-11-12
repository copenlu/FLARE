% Define constants
glasses_per_meal(3).
glasses_before_bed(1).
soda_substitution(1).
% Calculate total glasses of water on weekdays
total_glasses_weekdays(Total) :-
glasses_per_meal(GlassesPerMeal),
glasses_before_bed(GlassesBeforeBed),
Total is (GlassesPerMeal * 3) + GlassesBeforeBed.
% Calculate total glasses of water on weekends
total_glasses_weekends(Total) :-
glasses_per_meal(GlassesPerMeal),
glasses_before_bed(GlassesBeforeBed),
soda_substitution(SodaSubstitution),
Total is ((GlassesPerMeal * 2) + GlassesBeforeBed) + SodaSubstitution.
% Calculate total glasses of water in a week
total_glasses_week(Total) :-
total_glasses_weekdays(WeekdayTotal),
total_glasses_weekends(WeekendTotal),
Total is WeekdayTotal + WeekendTotal.
% Query to calculate the total glasses of water John drinks in a week
query(Total) :-
total_glasses_week(Total).
% Uncomment the following line to run the query and calculate the total glasses of water John drinks in a week
% ?- query(Total).
%query(Total).