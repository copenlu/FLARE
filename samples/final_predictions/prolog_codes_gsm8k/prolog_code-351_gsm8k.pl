% Laurel's friend gave her 24 baby outfits
friend_outfits(24).
% Laurel received twice the amount of outfits from her friend at her baby shower
shower_outfits(Total) :-
friend_outfits(FriendOutfits),
Total is FriendOutfits * 2.
% Laurel's mom gifted her 15 baby outfits
mom_outfits(15).
% Calculate the total number of baby outfits Laurel has
total_outfits(Total) :-
friend_outfits(FriendOutfits),
shower_outfits(ShowerOutfits),
mom_outfits(MomOutfits),
Total is FriendOutfits + ShowerOutfits + MomOutfits.
% Query predicate to run the program and get the result
query(Total) :-
total_outfits(Total).
% Uncomment the following line to run the query
% ?- query(Total).
%query(Total).