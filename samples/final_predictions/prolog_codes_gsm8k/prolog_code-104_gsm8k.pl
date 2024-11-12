TotalPages is SciencePages + SocialStudiesPages + HistoryPages + GeographyPages.
% Calculate the remaining pages after Monday
remaining_pages_after_monday(RemainingPages) :-
RemainingPages is TotalPages - 15.
average_pages_per_day(Days, AveragePages) :-
remaining_pages_after_monday(RemainingPages),
AveragePages is RemainingPages / Days.
query(AveragePages) :-
average_pages_per_day(Days, AveragePages).
% ?- query(AveragePages).
%query(AveragePages).