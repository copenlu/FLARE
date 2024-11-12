% Define the number of lines in Sean's solo song, first scene, and second scene
solo_song_lines(54).
first_scene_total_lines(SoloSongLines) :- solo_song_lines(SoloSongLines), FirstSceneTotalLines is SoloSongLines * 2.
second_scene_total_lines(SoloSongLines) :- solo_song_lines(SoloSongLines), SecondSceneTotalLines is SoloSongLines + 6.
% Calculate the number of lines that belong to Sean in each component
lines_in_first_scene(FirstSceneTotalLines, LinesInFirstScene) :- LinesInFirstScene is FirstSceneTotalLines / 3.
lines_in_second_scene(SecondSceneTotalLines, LinesInSecondScene) :- LinesInSecondScene is SecondSceneTotalLines * 4 / 5.
% Calculate the total number of lines Sean needs to memorize
total_lines_to_memorize(TotalLines) :- solo_song_lines(SoloSongLines), first_scene_total_lines(SoloSongLines), second_scene_total_lines(SoloSongLines),
lines_in_first_scene(FirstSceneTotalLines, LinesInFirstScene), lines_in_second_scene(SecondSceneTotalLines, LinesInSecondScene),
TotalLines is SoloSongLines + LinesInFirstScene + LinesInSecondScene.
% Query predicate to get the total number of lines Sean needs to memorize
query(TotalLines) :-
total_lines_to_memorize(TotalLines).
% Uncomment the following line to run the query
% ?- query(TotalLines).
%query(TotalLines).