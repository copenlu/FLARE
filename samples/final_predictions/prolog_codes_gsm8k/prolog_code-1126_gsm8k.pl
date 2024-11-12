% Define the rule to calculate the time taken to slide down a waterslide
time_to_slide(Length, Speed, Time) :-
Time is Length / Speed.
% Calculate the time taken to slide down the biggest slide
time_to_slide(300, 60, BiggestSlideTime).
% Calculate the time taken to slide down the second biggest slide
time_to_slide(240, 80, SecondBiggestSlideTime).
% Define the rule to calculate the difference in time taken between the two slides
time_difference(BiggestSlideTime, SecondBiggestSlideTime, Difference) :-
Difference is BiggestSlideTime - SecondBiggestSlideTime.
% Query to find the difference in time taken between the two slides
query(Difference) :-
time_difference(BiggestSlideTime, SecondBiggestSlideTime, Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).