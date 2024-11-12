% Define a predicate to calculate the total number of Chinese participants
total_chinese_participants(TotalChinese) :-
TotalAsian = 240,  % Total number of Asian participants
Japanese = 80,     % Number of Japanese participants
TotalChinese is TotalAsian - Japanese.
% Define a predicate to specify the number of boys on the Chinese team
boys_on_chinese_team(Boys) :-
Boys = 60.  % Given number of boys on the Chinese team
% Define a predicate to calculate the number of girls on the Chinese team
girls_on_chinese_team(TotalChinese, Boys, Girls) :-
Girls is TotalChinese - Boys.
% Define a query predicate to find out the number of girls on the Chinese team
query(Girls) :-
total_chinese_participants(TotalChinese),
boys_on_chinese_team(Boys),
girls_on_chinese_team(TotalChinese, Boys, Girls).
% Uncomment the line below to run the query in SWI-Prolog
% query(Girls).
%query(Girls).