% Define the number of students needing each size of shirt
extra_small(11).
small(Small) :- extra_small(ExtraSmall), Small is 2 * ExtraSmall.
medium(Medium) :- small(Small), Medium is Small - 4.
large(Large) :- medium(Medium), Large is Medium / 2.
extra_large(ExtraLarge) :- large(Large), ExtraLarge is Large + 6.
% Calculate the total number of shirts needed
total_shirts(Total) :- extra_small(ExtraSmall), small(Small), medium(Medium), large(Large), extra_large(ExtraLarge), Total is ExtraSmall + Small + Medium + Large + ExtraLarge.
% Query predicate to find the total number of shirts needed
query(Total) :- total_shirts(Total).
% Uncomment the line below to run the query
% ?- query(Total).
%query(Total).