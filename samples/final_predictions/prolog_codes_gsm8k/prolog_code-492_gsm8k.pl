% Define the number of tubes of blue and yellow paint Ben has
ben_paint(blue, 4).
ben_paint(yellow, 3).
% Calculate the number of tubes of paint Jasper has
jasper_paint(blue, BlueJasper) :-
ben_paint(blue, BlueBen),
BlueJasper is BlueBen / 2.
jasper_paint(yellow, YellowJasper) :-
ben_paint(yellow, YellowBen),
YellowJasper is YellowBen * 3.
% Query to find out how many tubes of paint Jasper has
query(BlueJasper, YellowJasper) :-
jasper_paint(blue, BlueJasper),
jasper_paint(yellow, YellowJasper).
% Uncomment the following line to run the query and calculate the number of tubes of paint Jasper has
% ?- query(BlueJasper, YellowJasper).
%query(BlueJasper, YellowJasper).