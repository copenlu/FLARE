% Define the height of the first child
height_first_child(6).
% Define the height of the second child
height_second_child(Height) :-
height_first_child(FirstHeight),
Height is FirstHeight + 2.
% Define the height of the third child
height_third_child(Height) :-
height_second_child(SecondHeight),
Height is SecondHeight - 5.
% Define the height of the fourth child
height_fourth_child(Height) :-
height_third_child(ThirdHeight),
Height is ThirdHeight + 3.
% Query to find the height of the fourth child
query_height_fourth_child(Height) :-
height_fourth_child(Height).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_height_fourth_child(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).