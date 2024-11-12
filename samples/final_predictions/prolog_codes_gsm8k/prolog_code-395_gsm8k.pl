% Predicate to calculate the number of girls in the choir
girls_in_choir(TotalMembers, Girls) :-
Girls is TotalMembers // 2.
% Predicate to calculate the number of performers who couldn't make it to the show
performers_not_attending(TotalMembers, NotAttending) :-
NotAttending is TotalMembers // 4.
% Predicate to calculate the total number of people who sang in the performance
total_singers(TotalMembers, NotAttending, Teachers, TotalSingers) :-
TotalSingers is TotalMembers - NotAttending + Teachers.
% Main predicate to calculate the total number of people who sang in the performance
number_of_singers(TotalMembers, Teachers, Singers) :-
girls_in_choir(TotalMembers, Girls),
performers_not_attending(TotalMembers, NotAttending),
total_singers(Girls, NotAttending, Teachers, Singers).
% Query to find out how many people sang in the performance with 52 choir members and 3 teachers joining
query(Singers) :-
number_of_singers(52, 3, Singers).
% Uncomment the following line to run the query
% ?- query(Singers).
%query(Singers).