% Define the number of jewels Aaron has based on half of Raymond's jewels
aaron_jewels(RaymondJewels, AaronJewels) :-
AaronJewels is (RaymondJewels / 2) + 5.
% Define the number of jewels Siobhan has based on Aaron's jewels
siobhan_jewels(AaronJewels, SiobhanJewels) :-
SiobhanJewels is AaronJewels - 2.
% Predicate to calculate the number of jewels Siobhan has when Raymond has 40 jewels
calculate_siobhan_jewels(SiobhanJewels) :-
RaymondJewels = 40,  % Given Raymond has 40 jewels
aaron_jewels(RaymondJewels, Aaron),
siobhan_jewels(Aaron, SiobhanJewels).
% Query to find out how many jewels Siobhan has
query(SiobhanJewels) :-
calculate_siobhan_jewels(SiobhanJewels).
% Uncomment the following line to run the query
% ?- query(SiobhanJewels).
%query(SiobhanJewels).