% Define the height of the beanstalk after the first week
height_after_week_one(3).
% Define the height of the beanstalk after the second week
height_after_week_two(Height) :-
height_after_week_one(InitialHeight),
Height is InitialHeight * 2.
% Define the height of the beanstalk after the third week
height_after_week_three(Height) :-
height_after_week_two(SecondWeekHeight),
Height is SecondWeekHeight + 4.
% Define the total height of the beanstalk after three weeks
total_height_after_three_weeks(TotalHeight) :-
height_after_week_three(TotalHeight).
% Query to find the total height of the beanstalk after three weeks
query(TotalHeight) :-
total_height_after_three_weeks(TotalHeight).
% Uncomment the following line to run the query
% ?- query(TotalHeight).
%query(TotalHeight).