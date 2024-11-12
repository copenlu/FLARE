% Define initial number of fairies seen by Katelyn
initial_fairies(50).
% Define number of fairies seen by Katelyn's friend
friend_fairies(25).
% Define number of fairies that flew away
fairies_flew_away(30).
% Calculate total fairies after friend's fairies join
total_fairies_after_join(TotalFairies) :-
initial_fairies(KatelynFairies),
friend_fairies(FriendFairies),
TotalFairies is KatelynFairies + FriendFairies.
% Calculate remaining fairies after some flew away
remaining_fairies(RemainingFairies) :-
total_fairies_after_join(TotalFairies),
fairies_flew_away(FlewAway),
RemainingFairies is TotalFairies - FlewAway.
% Query to calculate the number of fairies remaining
query(RemainingFairies) :-
remaining_fairies(RemainingFairies).
% Uncomment the following line to run the query and calculate the number of fairies remaining
% ?- query(RemainingFairies).
%query(RemainingFairies).