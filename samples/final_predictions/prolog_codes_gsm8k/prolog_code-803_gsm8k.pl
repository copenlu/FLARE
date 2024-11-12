% Define initial number of orange and white fish in Bob's pond
initial_fish(3, 4).
% Calculate total number of fish in the pond before adding new fish
total_fish(Total) :-
initial_fish(Orange, White),
Total is Orange + White.
% Calculate number of orange and white fish after adding new fish
updated_fish(OrangeNew, WhiteNew) :-
total_fish(Total),
OrangeNew is Total * 2,
WhiteNew is Total.
% Solve the equation and find the number of white fish bought at the store
find_white_fish(WhiteBought) :-
updated_fish(OrangeNew, WhiteNew),
initial_fish(InitialOrange, InitialWhite),
WhiteBought is WhiteNew - InitialWhite.
% Query to find the number of white fish Bob bought at the store
query(WhiteBought) :-
find_white_fish(WhiteBought).
% Uncomment the following line to run the query and find the number of white fish bought
% ?- query(WhiteBought).
%query(WhiteBought).