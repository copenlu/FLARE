% Define the number of doorbell rings made by the fourth friend
doorbell_rings(fourth_friend, 60).
% Calculate the number of doorbell rings made by each friend
doorbell_rings(first_friend, Rings) :-
doorbell_rings(fourth_friend, FourthRings),
Rings is 20.
doorbell_rings(second_friend, Rings) :-
doorbell_rings(fourth_friend, FourthRings),
Rings is FourthRings + FourthRings / 4.
doorbell_rings(third_friend, Rings) :-
doorbell_rings(fourth_friend, FourthRings),
Rings is FourthRings + 10.
% Calculate the total number of doorbell rings made by all friends
total_doorbell_rings(TotalRings) :-
doorbell_rings(first_friend, Rings1),
doorbell_rings(second_friend, Rings2),
doorbell_rings(third_friend, Rings3),
doorbell_rings(fourth_friend, Rings4),
TotalRings is Rings1 + Rings2 + Rings3 + Rings4.
% Query to calculate the total number of doorbell rings made by all friends
query(TotalRings) :-
total_doorbell_rings(TotalRings).
% Uncomment the following line to run the query and calculate the total number of doorbell rings
% ?- query(TotalRings).
%query(TotalRings).