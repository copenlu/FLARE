% Given information
% Let the number of people kicked out for refusing to wear masks be RefusingMasks
% Let the number of people kicked out for shoplifting be Shoplifting
% Let the number of people kicked out for physical violence over goods on sale be Violence
% Calculate the number of people kicked out for shoplifting and physical violence based on the relationships provided
Shoplifting is 4 * 3, % Assumed atom/predicate: Shoplifting is four times the number of people kicked out for refusing to wear masks
Violence is 3 * Shoplifting. % Assumed atom/predicate: Violence is three times the number of people kicked out for shoplifting
% Calculate the total number of people kicked out for the specified reasons
TotalSpecified is RefusingMasks + Shoplifting + Violence.
% Calculate the number of people kicked out for other reasons
kicked_out_for_other_reasons(OtherReasons) :-
TotalKickedOut is 50, % Total number of people kicked out
OtherReasons is TotalKickedOut - TotalSpecified.
% Query predicate to run the program and get the result
query(OtherReasons) :-
kicked_out_for_other_reasons(OtherReasons).
% Uncomment the following line to run the query
% ?- query(OtherReasons).
%query(OtherReasons).