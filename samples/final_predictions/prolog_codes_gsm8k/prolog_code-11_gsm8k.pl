% Define the total number of downloads over three months
total_downloads(FirstMonth, SecondMonth, ThirdMonth, TotalDownloads) :-
SecondMonth is FirstMonth * 3,
ThirdMonth is SecondMonth - (SecondMonth * 0.3),
TotalDownloads is FirstMonth + SecondMonth + ThirdMonth.
% Calculate the total downloads over three months
query(TotalDownloads) :-
total_downloads(60, SecondMonth, ThirdMonth, TotalDownloads).
% Uncomment the following line to run the query
% ?- query(TotalDownloads).
%query(TotalDownloads).